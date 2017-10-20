# Felix

This is the repository for the [Felix newspaper
website](http://felixonline.co.uk).

## Create an article

You'll need access to this repo first; once you've got that go here and fill
out the form to create a new article:
[New Article](http://prose.io/#FelixOnline/v2/new/master/content/articles)

If your article was written in MS Word you'll need to convert it to Markdown:
[MS Word to Markdown](https://word-to-markdown.herokuapp.com/). In future, it
might be easier to just write articles as Markdown. You can write Markdown
online with [dillinger.io](http://dillinger.io). You might also be interested
in [MacDown](https://macdown.uranusjr.com/) - a native markdown editor for
macOS.

## Add data about an author
Authors have a file that contains details about them, find them here on Prose:
[Authors](http://prose.io/#FelixOnline/v2/tree/master/content/authors)

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

## Build a production version of the site

1. Install [node and npm](https://nodejs.org/en/download/) & ensure that
   installed packages are in the PATH (for gulp etc).
1. Install the node modules `npm install`
1. Run:
    ```
    gulp scss --production
    gulp js --production
    bin/hugo
    ```
## Sync the changes to the site

First build a production version of the site.

Then connect to the VPN.

Then run something like this to rsync up the files:

```
USER=imperialUser
SERVER=something.ic.ac.uk
rsync -avz -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --delete --progress public/ $USER@$SERVER:/website/media/felix/v2test/
```

## CircleCI Setup

The repo is configured witch CircleCI. We as using this as a continuous
deployment service for the site.

When a new commit is pushed to the master branch, Circle will pick up the job
and build the site before pushing it to the gh-pages branch.

For this process to work there needs to be a deploy key added to Github, follow
[this guide](https://circleci.com/docs/1.0/adding-read-write-deployment-key/).
