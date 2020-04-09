/** Declare module */

const
    { src, dest, parallel, watch, series } = require('gulp'),
    concat = require('gulp-concat'),
    prefixer = require('gulp-autoprefixer'),
    sass = require('gulp-sass'),
    pug = require('gulp-pug'),
    browserSync = require('browser-sync').create(),
    postcss = require('gulp-postcss')

/** Files Path */
const FilesPath = {
    sassFiles: 'src/**/*.sass',
    jsFiles: 'src/**/*.js',
    htmlFiles: 'src/pug/pages/*.pug'
}

const { sassFiles, jsFiles, htmlFiles } = FilesPath;

/** Sass Task */
function sassTask() {
    return src(sassFiles)
        .pipe(sass({ outputStyle: 'compressed' }))
        .pipe(prefixer())
        .pipe(concat('style.css'))
        .pipe(dest('dist/assets/css'))
        .pipe(browserSync.stream());
}

/** JS Task */
function jsTask() {
    return src(jsFiles)
        .pipe(concat('all.js'))
        .pipe(dest('dist/assets/js'))

}

/** HTML Task */
function htmlTask() {
    return src(htmlFiles)
        .pipe(pug({ pretty: true }))
        .pipe(dest('dist'))
        .pipe(browserSync.stream());
}

/** Static Files Task */

function fontTask() {
    return src('src/fonts/**/*.woff')
        .pipe(dest('dist/assets/fonts'))
}

/** Watch Task */

function serve() {
    browserSync.init({
        server: {
            baseDir: './dist'
        }
    })

    watch(sassFiles, sassTask);
    watch(jsFiles, jsTask);
    watch('src/pug/**/*.pug', htmlTask);
}


exports.js = jsTask;
exports.sass = sassTask;
exports.html = htmlTask;
exports.default = series(parallel(htmlTask, sassTask, jsTask, fontTask));
exports.serve = series(serve, parallel(htmlTask, sassTask, jsTask))