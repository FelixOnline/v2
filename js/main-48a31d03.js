function openNav(){document.getElementById("sidenav").style.width="100%",document.getElementById("site-body").classList.add("site-blur")}function closeNav(){document.getElementById("sidenav").style.width="0",document.getElementById("site-body").classList.remove("site-blur")}if(function(e,t){"use strict";"function"==typeof define&&define.amd?define("ajax",t):"object"==typeof exports?exports=module.exports=t():e.ajax=t()}(this,function(){"use strict";function e(e){return e||null}function t(e,t,r,c){var i=["then","catch","always"].reduce(function(e,t){return e[t]=function(n){return e[t]=n,e},e},{}),u=new XMLHttpRequest,l=n(t,r,e);return u.open(e,l,!0),u.withCredentials=c.hasOwnProperty("withCredentials"),a(u,c.headers),u.addEventListener("readystatechange",s(i,u),!1),u.send(o(r)),i.abort=function(){return u.abort()},i}function n(e,t,n){if("get"!==n.toLowerCase()||!t)return e;var a=o(t);return e+(e.indexOf("?")>-1?"&":"?")+a}function a(e,t){r(t=t||{})||(t["Content-Type"]="application/x-www-form-urlencoded"),Object.keys(t).forEach(function(n){t[n]&&e.setRequestHeader(n,t[n])})}function r(e){return Object.keys(e).some(function(e){return"content-type"===e.toLowerCase()})}function s(e,t){return function n(){t.readyState===t.DONE&&(t.removeEventListener("readystatechange",n,!1),e.always.apply(e,c(t)),t.status>=200&&t.status<300?e.then.apply(e,c(t)):e.catch.apply(e,c(t)))}}function c(e){var t;try{t=JSON.parse(e.responseText)}catch(n){t=e.responseText}return[t,e]}function o(e){return i(e)?u(e):e}function i(e){return"[object Object]"===Object.prototype.toString.call(e)}function u(e){return Object.keys(e).reduce(function(t,n){return(t?t+"&":"")+l(n)+"="+l(e[n])},"")}function l(e){return encodeURIComponent(e)}return function(n){var a=["get","post","put","delete"];return n=n||{},n.baseUrl=n.baseUrl||"",n.method&&n.url?t(n.method,n.baseUrl+n.url,e(n.data),n):a.reduce(function(a,r){return a[r]=function(a,s){return t(r,n.baseUrl+a,e(s),n)},a},{})}}),function(e,t,n,a,r,s,c){e.GoogleAnalyticsObject=r,e[r]=e[r]||function(){(e[r].q=e[r].q||[]).push(arguments)},e[r].l=1*new Date,s=t.createElement(n),c=t.getElementsByTagName(n)[0],s.async=1,s.src="https://www.google-analytics.com/analytics.js",c.parentNode.insertBefore(s,c)}(window,document,"script",0,"ga"),ga("create","UA-106573298-1","auto"),ga("send","pageview"),document.location.pathname.includes("search")){var search={buildPageResult:function(e){var t=document.createElement("div");t.className="section-post";var n=document.createElement("div");n.className="section-post-info";var a=document.createElement("div");a.className="section-post-title";var r=document.createElement("a");r.href=e.link,r.innerHTML=e.title,r.setAttribute("target","_blank"),a.appendChild(r);var s=document.createElement("div");s.className="section-post-image",s.setAttribute("style","background-image: url(//images.weserv.nl/?url="+encodeURIComponent(e.image.replace("https://",""))+"&w=200");var c=document.createElement("p");return c.className="section-post-subtitle",e.subtitle&&(c.innerHTML=e.subtitle.substring(0,50)+"..."),n.appendChild(a),n.appendChild(c),t.appendChild(s),t.appendChild(n),t},getURLParameter:function(e){return decodeURIComponent((new RegExp("[?|&]"+e+"=([^&;]+?)(&|#|;|$)").exec(location.search)||[null,""])[1].replace(/\+/g,"%20"))||null},perform:function(){if(search.authorBlock.style.display="none",search.articleBlock.style.display="none",search.authorResultsList.innerHTML="",search.articleResultsList.innerHTML="",!(search.inputBox.value.length<3)){var e=[],t=[];for(var n in search.pages)"authors"==search.pages[n].type?search.matchAuthor(search.inputBox.value.toLowerCase(),search.pages[n])&&e.push(search.pages[n]):"articles"==search.pages[n].type&&search.matchArticle(search.inputBox.value.toLowerCase(),search.pages[n])&&t.push(search.pages[n]);for(var n in t)search.articleResultsList.appendChild(search.buildPageResult(t[n]));for(var n in e)search.authorResultsList.appendChild(search.buildPageResult(e[n]));0===e.length?search.authorBlock.style.display="none":search.authorBlock.style.display="block",0===t.length?search.articleBlock.style.display="none":search.articleBlock.style.display="block"}},matchArticle:function(e,t){var n=(t.title+" "+t.authors).toLowerCase(),a=e.split(" "),r=!0;for(var s in a)if(!n.includes(a[s])){r=!1;break}return r},matchAuthor:function(e,t){var n=t.title.toLowerCase(),a=e.split(" "),r=!0;for(var s in a)if(!n.includes(a[s])){r=!1;break}return r},init:function(){ajax().get("/site_index/index.json").then(function(e,t){search.pages=e,search.inputBox=document.getElementById("search"),search.authorResultsList=document.getElementById("authorResults"),search.articleResultsList=document.getElementById("articleResults"),search.authorBlock=document.getElementById("authors"),search.articleBlock=document.getElementById("articles"),search.inputBox.oninput=search.perform;var n=search.getURLParameter("q");null!=n&&(search.inputBox.value=n,search.perform())})}};search.init()}