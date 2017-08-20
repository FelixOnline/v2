var gulp         = require("gulp")
    sass         = require("gulp-sass")
    autoprefixer = require("gulp-autoprefixer")
    hash         = require("gulp-hash")
    del          = require("del")

// Compile SCSS to CSS
gulp.task("scss", function () {

    // Delete old css files
    del(["themes/felix/static/css/**/*"])

    // Compile hashsed css files
    gulp.src("themes/felix/src/scss/**/*.scss")
        .pipe(sass({
            outputStyle : "compressed"
        }))
        .pipe(autoprefixer({
            browsers: ["last 20 versions"]
        }))
        .pipe(hash())
        .pipe(gulp.dest("themes/felix/static/css"))
        .pipe(hash.manifest("hash.json"))
        .pipe(gulp.dest("data/css"))
})

// Watch asset folder for changes
gulp.task("watch", ["scss"], function () {
    gulp.watch("themes/felix/src/scss/**/*", ["scss"])
})

gulp.task("default", ["watch"])