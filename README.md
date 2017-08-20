# Felix

This is the repository for the Felix newspaper website.

## Create an article

You'll need access to this repo first; once you've got that go here and fill
out the form to create a new article:
[New Article](http://prose.io/#FelixOnline/felixonline.github.io/new/master/content/articles)

If your article was written in MS Word you'll need to convert it to Markdown:
[MS Word to Markdown](https://word-to-markdown.herokuapp.com/). In future, it
might be easier to just write articles as Markdown. You can write Markdown
online with [dillinger.io](http://dillinger.io). You might also be interested
in [MacDown](https://macdown.uranusjr.com/) - a native markdown editor for
macOS.

## Add data about an author
Authors have a file that contains details about them, find them here on Prose:
[Authors](http://prose.io/#FelixOnline/felixonline/tree/master/content/authors)

## Make changes to the site layout & styles

The site is built using Hugo - a static site generator. To get started first
[install Hugo](https://gohugo.io/getting-started/installing/).

Once you've done that run `hugo server` from the root of the repo - this will
start a local copy of the site running at [http://localhost:1313/](http://localhost:1313/).
It live reloads when you make edits to files.

Project Structure:
* `config.yaml` - site wide config
* `_prose.yml` - file that configures the prose UI
* `content` - directory for articles and author details, any new pages go here
* `themes/felix` - contains the source used to build the various pages
