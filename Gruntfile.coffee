module.exports = ->
  # Project configuration
  @initConfig
    pkg: @file.readJSON 'package.json'

    # Automated recompilation and testing when developing
    watch:
      files: [
        './json2html/src/**/*.coffee',
        './dnl2json/src/**/*.coffee',
      ]
      tasks: ['build']

    # Systax checking
    jshint:
      lib: ['lib/*.js']

    # CoffeeScript compilation
    coffee:
      json2html:
        options:
          bare: true
        files:
          'lib/json2html.js': 'json2html/src/**/*.coffee'

      dnl2json:
        options:
          bare: true
        files:
          'lib/dnl2json.js': 'dnl2json/src/**/*.coffee'

  # Grunt plugins used for building
  @loadNpmTasks 'grunt-component-build'

  @loadNpmTasks 'grunt-contrib-coffee'
  @loadNpmTasks 'grunt-contrib-watch'

  @registerTask 'build', ['coffee:json2html', 'coffee:dnl2json']
  @registerTask 'devel', ['build', 'watch']
  @registerTask 'default', ['build']
