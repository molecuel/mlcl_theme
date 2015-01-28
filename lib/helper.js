var namespace = null;
var moment = require('moment-timezone');
var _ = require('underscore');
var url = require('url');
var helpers = {};
var handlebars = require('handlebars');
var hbs = handlebars.create();
var numeral = require('numeral');
var pretty = require('prettysize');

helpers.json_format = function json_format(view, req, res) {
  return function(context) {
    return new res.locals._view.theme.hbs.SafeString(JSON.stringify(context));
  }
};

helpers.productAZ = function productAZ(view, req, res) {
  return function(context, options) {
    if(context) {
      _.map(context, function(item) {
        var c = item.title.charAt(0);
        if(c) {
          list[c.toUpperCase()] = true;
        }
      });
    }
    return JSON.stringify(list);
  }
};

helpers.filesize = function (context) {
  if(context && context['length']) {
    var length = context['length'];
    return '('+pretty(length)+')';
  }
};

helpers.languageswitch = function languageswitch(view, req, res) {
  return function() {
    var link;
    var lang, cssclass;
    if(req.locale == 'ru') {
      link = req.url;
      cssclass = 'en';
    } else {
      link = '/ru' + req.url;
      cssclass = 'ru';
    }
    var result = '<a href="'+link+'" class="'+cssclass+'">'+link+'</a>';
    return new res.locals._view.theme.hbs.SafeString(result);
  }
};

helpers.link = function link(view, req, res) {
  return function(context) {
    var link = context;
    if(_.isArray(link)) {
      link = link[0];
    }
    if(_.isString(link)) {
      if(req.locale == 'ru') {
        link = '/ru' + link;
      }
      if(res.locals.query) {
        var urlObject = url.parse(link, true);
        urlObject.query = _.extend(urlObject.query, res.locals.query);
        link = urlObject.format();
      }
    }
    return link;
  }
}

helpers.productfilter = function productfilter(view, req, res) {

  var iterateFilter = function iterateFilter(tree, parent, level) {
    var cnt = 0;
    var l = level + 1;

    if(parent.filters) {
      if(!tree.children) tree.children = [];
      _.each(parent.filters, function(child) {
        var item = { title: child.title, 'class': '', 'link_class':'', 'filter':true }
        if(child.href) {
          item.href = child.href;
        }
        if(child.active) {
          item.class+= 'active ';
        }
        if(child.title) {
          item.class+= child.title.replace(/[^a-zA-Z0-9]/g, '-').toLowerCase()+' ';
        }
        if(child.toggle) {
          item.link_class+= 'toggle ';
          if(!child.active) {  //filters without selected options are collapsed by default
            item.class+= 'collapsed ';
          }
        }
        if(cnt == 0) {
          item.class+= 'first ';
        }
        cnt++;
        if(cnt == parent.filters.length) {
          item.class+= 'last ';
        }
        tree.children.push(item);
        iterateFilter(item, child, l);
      });
    }
    if(parent.items) {
      if(!tree.children) tree.children = [];
      _.each(parent.items, function(child) {
        var item = { title: child.title, 'class': '', 'link_class':'', 'doc_count': child.doc_count }
        if(parent.titleprefix) {
          item.title = parent.titleprefix + item.title;
        }
        if(child.href) {
          item.href = child.href;
        }
        if(child.active) {
          item.active = true;
          item.class+= 'active ';
          item.link_class+= 'active ';
        }
        if(child.icon) {
          item.icon = {url: child.icon.url};
        }
        if(child.title) {
          item.class+= 'title-'+child.title.replace(/[^a-zA-Z0-9]/g, '-').toLowerCase()+' ';
        }
        if(child.key) {
          item.class+= 'key-'+child.key+' ';
        }
        if(cnt == 0) {
          item.class+= 'first ';
        }
        cnt++;
        if(cnt == parent.items.length) {
          item.class+= 'last ';
        }
        tree.children.push(item);
      });
    }
  };

  return function(context, options) {
    if(context) {
      var menu = {children: [  ], menuClass: ''};

      menu.class = options.hash.class || '';
      menu.menuClass = options.hash.menuClass || '';

      // build the tree
      iterateFilter(menu, {filters: context}, 0);

      var result = JSON.stringify(menu);
      //return new handlebars.SafeString(result);

      // include the template
      return view.partial(this.locals, 'filter/filter', menu);
    }
  };
};

helpers.breadcrumb = function(view, req, res) {

  return function(context, options) {

    if(context && context.length) {
        return JSON.stringify(context);
    }
  }
};

helpers.menu = function(view, req, res) {

  var iterateMenuItems = function(tree, parent, level) {
    if(parent.children) {
      tree.children = [];
      var cnt = 0;
      var l = level + 1;
      _.each(parent.children, function(child) {
        var item = {title:'', class:'', href: child.url};
        item.title = child.name;
        if(cnt == 0) {
          item.class+= 'first ';
        }
        cnt++;
        if(cnt == parent.children.length) {
          item.class+= 'last ';
        }
        if(child.activeTrail) item.class+= 'active-trail ';
        if(child.active) item.class+= 'active ';
        if(child.children.length) item.class+= 'parent ';
        tree.children.push(item);
        iterateMenuItems(item, child, l);
      });
    }
  };

  return function(context, options) {
    if(context) {
      var menu = {children: [  ], menuClass: ''};

      menu.class = options.hash.class || '';
      menu.menuClass = options.hash.menuClass || '';

      // build the tree
      iterateMenuItems(menu, context, 0);

      // include the template
      return view.partial(this.locals, 'menu/menu', menu);
    }
  }
};

helpers.menuItems = function(view, req, res) {
  return function(context, options) {
    console.log(context);
  }
};

helpers.event_agenda = function(view, req, res) {
  return function (context, options) {
    var result = '';
    if(context.date.from && context.date.to) {
      var from = moment.utc(context.date.from);
      var to = moment.utc(context.date.to);
      var tz = context.timezone || 'Europe/Moscow';
      _.each(context.agenda, function(agenda) {
        result += '<li>';
        var start = moment.tz(agenda.from, tz);
        var end = moment.tz(agenda.to, tz);
        if(start.isSame(from, 'day')) {
          result += start.format('HH:mm');
          result += ' - ';
        } else {
          result += start.format('MMM, Do YYYY - HH:mm');
          result += ' - ';
        }
        if(end.isSame(start, 'day')) {
          result += end.format('HH:mm');
        } else {
          result += end.format('HH:mm');
        }
        result += ' ' + agenda.description;
        result += '</li>';
      });
    }
    return new handlebars.SafeString(result);
  }
}

helpers.video_embed = function(view, req, res) {
  return function(context, options) {
    var result;
    var check_youtube = /(?:youtube(?:-nocookie)?\.com\/(?:[^\/\n\s]+\/\S+\/|(?:v|e(?:mbed)?)\/|\S*?[?&]v=)|youtu\.be\/)([a-zA-Z0-9_-]*)/;
    if(context && _.isString(context)) {
      var match = context.match(check_youtube);
      if(match && match[1]) {
        var url = '//www.youtube.com/embed/' + match[1];
        result = '<iframe src="'+url+'" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>'
      }
    }

    if(result) {
      result = '<div class="embed-container">' + result + '</div>';
      return new res.locals._view.theme.hbs.SafeString(result);
    }
  }
}

registerViewHelpers = function(view) {
  view.registerRequestHelper('video:embed', helpers.video_embed);

  view.registerHelper('filesize', helpers.filesize);
  view.registerRequestHelper('json_format', helpers.json_format);
  view.registerRequestHelper('breadcrumb', helpers.breadcrumb);
  view.registerRequestHelper('menu', helpers.menu);
  view.registerRequestHelper('menu:items', helpers.menuItems);
  view.registerRequestHelper('lt:event:agenda', helpers.event_agenda);
  view.registerRequestHelper('lt:productfilter', helpers.productfilter);
  view.registerRequestHelper('lt:charfilter', helpers.productAZ);
  view.registerRequestHelper('lang:switch', helpers.languageswitch);
  view.registerRequestHelper('lang:link', helpers.link);
}


module.exports = helpers;
module.exports.registerViewHelpers = registerViewHelpers;
