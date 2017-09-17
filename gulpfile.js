var gulp          = require("gulp"),
    sass          = require("gulp-sass"),
    autoprefixer  = require("gulp-autoprefixer"),
    hash          = require("gulp-hash"),
    del           = require("del"),
    assetManifest = require('gulp-asset-manifest'),
    util          = require('gulp-util');

var config = {
    production: !!util.env.production
};

// Compile SCSS to CSS
gulp.task("scss", function () {

  // Delete old css files
  del(["themes/felix/static/css/**/*"])

  // Compile hashsed css files
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
})

// Watch asset folder for changes
gulp.task("watch", ["scss"], function () {
    gulp.watch(["themes/felix/src/scss/**/*.*", "gulpfile.js"], ["scss"])
})

gulp.task("default", ["watch"])
