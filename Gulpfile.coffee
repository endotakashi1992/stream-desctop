gulp = require('gulp')
jade = require('gulp-jade')
coffee = require('gulp-coffee')
webserver = require('gulp-webserver')

gulp.task 'default',['jade','coffee'],->
  gulp.watch 'src/**/*.jade',['jade']
  gulp.watch 'src/**/*.coffee',['coffee']

# gulp.task 'node-webkit', ->
#   gulp.src('app')
#   .pipe webserver
#     livereload: true
#     open: false

gulp.task 'jade',->
  gulp.src 'src/**/*.jade'
  .pipe jade()
  .pipe gulp.dest('app/')

gulp.task 'coffee',->
  gulp.src 'src/**/*.coffee'
  .pipe coffee()
  .pipe gulp.dest('app/')