function openSearch() {
    document.getElementById("search").style.display = "block";
}

function closeSearch() {
    document.getElementById("search").style.display = "none";
} 

function toggleSearchBar() {
    var nav = document.getElementById("searchBar");
    if(nav.className === "mavinex-nav__search-bar") {
        nav.className += " active";
    } else {
        nav.className = "mavinex-nav__search-bar";
    }
}