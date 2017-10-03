if (document.location.pathname.includes("search")) {
  var search = {
    buildPageResult: function(page) {
      var result = document.createElement("div");
      result.className = "section-post";

      var info = document.createElement("div");
      info.className = "section-post-info";

      var title = document.createElement("div");
      title.className = "section-post-title";

      var link = document.createElement("a");
      link.href = page.link;
      link.innerHTML = page.title;
      link.setAttribute("target", "_blank")
      title.appendChild(link);

      var image = document.createElement("div");
      image.className = "section-post-image";
      image.setAttribute("style", "background-image: url(//images.weserv.nl/?url=" + encodeURIComponent(page.image.replace("https://", "")) + "&w=200");

      var subtitle = document.createElement("p");
      subtitle.className = "section-post-subtitle";
      if (page.subtitle) {
        subtitle.innerHTML = page.subtitle.substring(0, 50) + "...";
      }

      info.appendChild(title);
      info.appendChild(subtitle);

      result.appendChild(image);
      result.appendChild(info);

      return result;
    },

    getURLParameter: function(name) {
      return decodeURIComponent((new RegExp('[?|&]' + name + '=' + '([^&;]+?)(&|#|;|$)').exec(location.search) || [null, ''])[1].replace(/\+/g, '%20')) || null;
    },

    perform: function() {
      search.authorBlock.style.display = "none";
      search.articleBlock.style.display = "none";

      search.authorResultsList.innerHTML = "";
      search.articleResultsList.innerHTML = "";

      if (search.inputBox.value.length < 3) { return }

      var authorResults = [];
      var articleResults = [];
      for (var i in search.pages) {
        if (search.pages[i].type == "authors") {
          if (search.matchAuthor(search.inputBox.value.toLowerCase(), search.pages[i])) {
            authorResults.push(search.pages[i]);
          }
        } else if (search.pages[i].type == "articles") {
          if (search.matchArticle(search.inputBox.value.toLowerCase(), search.pages[i])) {
            articleResults.push(search.pages[i]);
          }
        }
      }

      for (var i in articleResults) {
        search.articleResultsList.appendChild(search.buildPageResult(articleResults[i]));
      }
      for (var i in authorResults) {
        search.authorResultsList.appendChild(search.buildPageResult(authorResults[i]));
      }

      if (authorResults.length === 0) {
        search.authorBlock.style.display = "none";
      } else {
        search.authorBlock.style.display = "block";
      }
      if (articleResults.length === 0) {
        search.articleBlock.style.display = "none";
      } else {
        search.articleBlock.style.display = "block";
      }
    },

    matchArticle: function(query, article) {
      var articleString = (article.title + " " + article.authors).toLowerCase();
      var words = query.split(" ");

      var match = true;
      for (var i in words) {
        if (!articleString.includes(words[i])) {
          match = false;
          break;
        }
      }

      return match;
    },

    matchAuthor: function(query, author) {
      var authorString = author.title.toLowerCase();
      var words = query.split(" ");

      var match = true;
      for (var i in words) {
        if (!authorString.includes(words[i])) {
          match = false;
          break;
        }
      }

      return match;
    },

    init: function() {
      ajax().get('/v2/site_index/index.json').then(function (data, xhr) {
        search.pages = data;
        search.inputBox = document.getElementById("search");

        search.authorResultsList = document.getElementById("authorResults");
        search.articleResultsList = document.getElementById("articleResults");

        search.authorBlock = document.getElementById("authors");
        search.articleBlock = document.getElementById("articles");

        search.inputBox.oninput = search.perform;

        var queryParam = search.getURLParameter("q");
        if (queryParam != null) {
          search.inputBox.value = queryParam;
          search.perform();
        }
      })
    }
  }

  search.init();
}
