var async = require('async');
var helpers = require('./lib/helper');
var _ = require('underscore');
var debug = require('debug')('lt_theme');
var moment = require('moment-timezone');
var molecuel;

/**
 * View module as theming layer for molecuel CMS
 */
var theme = function(config) {
  var self = this;
  this.name = config.name;
  this.config = config;
  molecuel.emit('mlcl::core::module:bootstrap:block', this.name);

  this.description = 'theme-swencarlin';
  this.dir = __dirname + '/build/views';
  this.templates; //filled by theme

  //register as theme
  molecuel.on('mlcl::view::register:theme', function(view) {
    view.registerTheme(self, function(err, result) {
      if(err) {
        console.log(err);
      }
      molecuel.emit('mlcl::core::module:bootstrap:ready', 'lt_theme');
    });
  });

  //register lt helper
  molecuel.on('mlcl::view::register:helper', function(view) {
    // load default helpers
    helpers.registerViewHelpers(view);
  });
};

/* ************************************************************************
 CORE THEME (INTERFACE) METHODS
 ************************************************************************ */


 /**
  * prepareContent - method should prepare all items for rendering
  *
  * @param  {type} req      description
  * @param  {type} res      description
  * @param  {type} callback description
  * @return {type}          description
  */
theme.prototype.prepareContent = function prepareContent(req, res, callback) {
  var self = this;
  //prepare the data
  if(!res.locals.data) {
    return callback();
  }
  if(res.locals.data.main && res.locals.data.main._view) {
    res.locals._view = res.locals._view || {}
    if(res.locals.data.main._view.layout && !res.locals._view.layout) {
      res.locals._view.layout = res.locals.data.main._view.layout;
    }
  }
  async.each(Object.keys(res.locals.data), function(key, cb) {
    var item = res.locals.data[key];
    // init the default view item
    if(!item._view) {
      item._view = {}
    }
    // templates
    if(!item._view.template) {
      item._view.template = [];
    } else if(_.isString(item._view.template)) {
      item._view.template = [item._view.template];
    }
    // based on module
    if(item._meta && item._meta.module) {
      if(item._view.mode) {
        item._view.template.push(item._meta.module + '/' + item._meta.type + '/' + item._view.mode);
      }
      if(item._meta.type) {
        item._view.template.push(item._meta.module + '/' + item._meta.type + '/default' );
        item._view.template.push(item._meta.module + '/' + item._meta.type);
      }
      if(item._meta.type) {
        item._view.template.push(item._meta.module + '/default');
      }
    }
    item._view.template.push('default');

    cb();
  }, function(err) {
    if(err) {
      return callback(err);
    }
    if(res.locals.blocks) {
      async.each(res.locals.blocks, function(block, cb) {
        if(!block._view) {
          block._view = {};
        }
        if(!block._view.template) {
          block._view.template = [];
        } else if(_.isString(block._view.template)) {
          block._view.template = [block._view.template];
        }
        block._view.template.push('blocks/'+block.type, 'blocks/default');
        // handle specific preprocessments
        if(block.type == 'collection' && block.data && block.data.name == 'digests') {
          self.preprocessDigests(req, res, block, cb);
        } else if(block.type == 'lt' && block.data && block.data.name == 'reference-projects') {
          self.preprocessReferenceProjects(req, res, block, cb);
        } else {
          cb();
        }
      }, function(err) {
        return callback(null, res.locals);
      });
    } else {
      return callback(null, res.locals);
    }
  });
};

theme.prototype.preprocessReferenceProjects = function preprocessReferenceProjects(req, res, item, callback) {
  item.data = item.data || {};
  var projects = [];
  if(item.data.projects) {
    _.each(item.data.projects, function(project) {
      if(project.location && project.location.geo) {
        projects.push(project);
      }
      delete project.smallfamilies;
      delete project.applications;
    });
  }
  item.data.projects = projects;
  callback();
};

theme.prototype.preprocessDigests = function preprocessDigests(req, res, item, callback) {
  item.data = item.data || {};
  item.data.years = [];
  var years = [];
  var map = {};
  var year;
  _.each(item.data.items, function(digest) {
    year = moment(digest.publishdate).format('YYYY');
    if(!map[year]) {
      map[year] = {year: year, items: []};
      years.push(map[year]);
    }
    map[year].items.push(digest);
  });
  item.data.years = _.sortBy(years, function(y) { return y.year * -1; });
  callback();
};


/* ************************************************************************
 SINGLETON CLASS DEFINITION
 ************************************************************************ */
var instance = null;

/**
 * Singleton getInstance definition
 * @return singleton class
 */
var getInstance = function (config) {
  if (instance === null) {
    instance = new theme(config);
  }
  return instance;
};


var init = function(mlcl, config) {

  molecuel = mlcl;
  return getInstance(config);
};

module.exports = init;
