'use strict';

module.exports = function (grunt) {

  grunt.initConfig({
    less: {
      production: {
        options: {
          compress: false,
          yuicompress: false,
          optimization: 2
        },
        files: {
          'public/css/styles.css': 'less/styles.less'
        }
      }
    },
    watch: {
      styles: {
        // Which files to watch (all .less files recursively in the less directory)
        files: ['less/**/*.less', 'less/*.less'],
          filter: 'isFile',
        tasks: ['less'],
        options: {
          nospawn: true
        }
      }
    }
  });

  grunt.loadNpmTasks('grunt-contrib-less');
  grunt.loadNpmTasks('grunt-contrib-watch');

  grunt.registerTask('build', ['less']);
  grunt.registerTask('default', ['watch']);

};
