if (document.location.pathname.includes("search")) {
  function buildArticleResult(article) {
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
  }

  ajax().get('/v2/site_index/index.json').then(function (articles, xhr) {
    var searchInput = document.getElementById("search");
    var searchResults = document.getElementById("results");

    searchInput.oninput = function() {
      searchResults.innerHTML = "";
      if (searchInput.value.length < 3) { return }

      var results = [];
      for (var i in articles) {
        if (articles[i].title.toLowerCase().includes(searchInput.value.toLowerCase())) {
          results.push(articles[i]);
          if (results.length > 5) {
            break;
          }
        }
      }
      for (var i in results) {
        searchResults.appendChild(buildArticleResult(results[i]));
      }
    }
  });
}
