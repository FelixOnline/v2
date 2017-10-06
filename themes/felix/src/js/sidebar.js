function openNav() {
  document.getElementById("sidenav").style.width = "100%";
  document.getElementById("site-body").classList.add("site-blur");
}

function closeNav() {
  document.getElementById("sidenav").style.width = "0";
  document.getElementById("site-body").classList.remove("site-blur");
}
