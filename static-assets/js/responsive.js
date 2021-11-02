$(window).resize(function() {
    var tabletView = $(window).width();
    if(tabletView <= 800) {
        $(".content__img, .content__text").removeClass("col-sm-12 col-md-6 col-lg-6").addClass("col-12");
    }
});