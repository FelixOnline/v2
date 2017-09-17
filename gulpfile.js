var gulp          = require("gulp"),
    assetManifest = require('gulp-asset-manifest'),
    autoprefixer  = require("gulp-autoprefixer"),
    concat        = require("gulp-concat"),
    del           = require("del"),
    hash          = require("gulp-hash"),
    sass          = require("gulp-sass"),
    uglify        = require('gulp-uglify'),
    util          = require('gulp-util');

var config = {
    production: !!util.env.production
};

gulp.task("scss", function () {
  del(["themes/felix/static/css/**/*"])

  gulp.src("themes/felix/src/scss/**/*.scss")
    .pipe(config.production ? sass({outputStyle : "compressed"}) : sass())
    .pipe(config.production ? hash() : util.noop())
    .pipe(gulp.dest("themes/felix/static/css"))
    .pipe(autoprefixer({
      browsers: ["last 20 versions"]
    }))
    .pipe(assetManifest({
      bundleName: 'styles',
      manifestFile: "data/css/styles.json"
    }))
    .pipe(gulp.dest("data/css"))
});

gulp.task("js", function () {
  del(["themes/felix/static/js/*"])

  gulp.src("themes/felix/src/js/**/*.js")
    .pipe(concat("main.js"))
    .pipe(config.production ? uglify() : util.noop())
    .pipe(config.production ? hash() : util.noop())
    .pipe(gulp.dest("themes/felix/static/js"))
    .pipe(assetManifest({
      bundleName: 'scripts',
      manifestFile: "data/js/scripts.json"
    }))
});

gulp.task("watch", ["scss", "js"], function () {
  gulp.watch(["themes/felix/src/scss/**/*.*", "gulpfile.js"], ["scss", "js"])
})

gulp.task("default", ["watch"])
