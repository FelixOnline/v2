if (document.location.pathname.includes("search")) {
  var search = {
    buildArticleResult: function(article) {
      var result = document.createElement("div");

      var link = document.createElement("a");
      link.href = article.link;
      link.innerHTML = article.title;
      link.setAttribute("target", "_blank")

      var image = document.createElement("img");
      image.setAttribute("src", "//images.weserv.nl/?url=" + article.image.replace("https://", "") + "&w=100");

      var subtitle = document.createElement("p");
      subtitle.innerHTML = article.subtitle;

      result.appendChild(image);
      result.appendChild(link);
      result.appendChild(subtitle);

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
        if (search.articles[i].title.toLowerCase().includes(search.inputBox.value.toLowerCase())) {
          results.push(search.articles[i]);
          if (results.length > 5) {
            break;
          }
        }
      }
      for (var i in results) {
        search.resultsList.appendChild(search.buildArticleResult(results[i]));
      }
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
