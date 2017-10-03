if (document.location.pathname.includes("search")) {
  var search = {
    buildArticleResult: function(article) {
      var result = document.createElement("div");
      result.className = "section-post";

      var info = document.createElement("div");
      info.className = "section-post-info";

      var title = document.createElement("div");
      title.className = "section-post-title";

      var link = document.createElement("a");
      link.href = article.link;
      link.innerHTML = article.title;
      link.setAttribute("target", "_blank")
      title.appendChild(link);

      var image = document.createElement("div");
      image.className = "section-post-image";
      image.setAttribute("style", "background-image: url(//images.weserv.nl/?url=" + encodeURIComponent(article.image.replace("https://", "")) + "&w=200");

      var subtitle = document.createElement("p");
      subtitle.className = "section-post-subtitle";
      subtitle.innerHTML = article.subtitle.substring(0, 50) + "...";

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
      search.resultsList.innerHTML = "";
      if (search.inputBox.value.length < 3) { return }

      var results = [];
      for (var i in search.articles) {
        if (search.matchArticle(search.inputBox.value.toLowerCase(), search.articles[i])) {
          results.push(search.articles[i]);
          if (results.length > 20) {
            break;
          }
        }
      }
      for (var i in results) {
        search.resultsList.appendChild(search.buildArticleResult(results[i]));
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

    init: function() {
      ajax().get('/v2/site_index/index.json').then(function (data, xhr) {
        search.articles = data;
        search.inputBox = document.getElementById("search");
        search.resultsList = document.getElementById("results");

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
