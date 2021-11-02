window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    var mobileSize = window.matchMedia("(max-width: 600px)")
    if (document.body.scrollTop > 180 || document.documentElement.scrollTop > 180 || mobileSize.matches) {
        document.getElementById("nav").style.height = "100px";
        document.getElementById("navLinks").style.top = "100px";
    } else {
        document.getElementById("nav").style.height = "160px";
        document.getElementById("navLinks").style.top = "160px";
    }
} 

function toggleNav() {
    var nav = document.getElementById("nav-content");
    if(nav.className === "mavinex-nav__links") {
        nav.className += " show";
    } else {
        nav.className = "mavinex-nav__links";
    }
}

//Get the button
var mybutton = document.getElementById("btn-up-top");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}

