<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="shortcut icon" href="/static-assets/images/logos/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/static-assets/plugins/flag-icons/css/flag-icon.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/font-awesomeweb-5121/css/all.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/owlcarousel234/dist/assets/owl.carousel.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/owlcarousel234/dist/assets/owl.theme.default.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap441/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap-select1139/dist/css/bootstrap-select.min.css"/>
    <link rel="stylesheet" href="/static-assets/css/styles.css"/>
    <link rel="stylesheet" href="/static-assets/css/mavinex.css"/>
    <title></title>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-172633935-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
    
      gtag('config', 'UA-172633935-1');
    </script>

    <style>
        .line-white{
            color: #FFF;
            
        }
        body {
  font-family: Arial;
  margin: 0;
}
* {
  box-sizing: border-box;
}
img {
  vertical-align: middle;
}
/* Position the image container (needed to position the left and right arrows) */
.container {
  position: relative;
}
/* Hide the images by default */
.mySlides {
  display: none;
}
/* Add a pointer when hovering over the thumbnail images */
.cursor {
  cursor: pointer;
}
/* Next & previous buttons */
.prev,
.next {
  cursor: pointer;
  position: absolute;
  top: 40%;
  width: auto;
  padding: 16px;
  margin-top: -50px;
  color: white;
  font-weight: bold;
  font-size: 20px;
  border-radius: 0 3px 3px 0;
  user-select: none;
  -webkit-user-select: none;
}
/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}
/* On hover, add a black background color with a little bit see-through */
.prev:hover,
.next:hover {
  background-color: rgba(0, 0, 0, 0.8);
}
/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}
/* Container for image text */
.caption-container {
  text-align: center;
  background-color: #222;
  padding: 2px 16px;
  color: white;
}
/* 
.row:after {
  content: "";
  display: table;
  clear: both;
} */
/* Six columns side by side */
.column {
    /*float: left;
    width: 16.66%; 
    width: 23.633%;
    margin: 0px 3px;*/
    float: left;
    /*width: 16.66%; */
    width: 23%;
    margin: 0px 1.33%;
}
.column:first-child {
    margin-left: 0px;
}
.column:last-child {
    margin-right: 0px;
}
/* Add a transparency effect for thumnbail images */
.demo {
  opacity: 0.6;
}
.active,
.demo:hover {
  opacity: 1;
}
.mb-custom {
  /* position: absolute;
  bottom: 0; */
}
.btn-desc {
  background-color: #00559a;
  padding: 8px;
  width: 40%;
  bottom: 0;
  border: 1px solid #FFF;
  color: #FFF;
}
/*=========================*/
.carousel {
	margin: 0px auto;
    padding: 0px 0px;
}
.carousel .item {
	color: #747d89;
	/*min-height: 325px;*/
    text-align: center;
	overflow: hidden;
}
.carousel .thumb-wrapper {
	/*padding: 25px 15px;
	background: #fff;
	border-radius: 6px;
	text-align: center;
	position: relative;
	box-shadow: 0 2px 3px rgba(0,0,0,0.2);*/
}
.carousel .item .img-box {
	height: 120px;
	margin-bottom: 20px;
	width: 100%;
	position: relative;
}
.carousel .item img {	
	max-width: 100%;
	max-height: 100%;
	display: inline-block;
	position: absolute;
	bottom: 0;
	margin: 0 auto;
	left: 0;
	right: 0;
}
.carousel .item h4 {
	font-size: 18px;
}
.carousel .item h4, .carousel .item p, .carousel .item ul {
	margin-bottom: 5px;
}
.carousel .thumb-content .btn {
	color: #7ac400;
    font-size: 11px;
    text-transform: uppercase;
    font-weight: bold;
    background: none;
    border: 1px solid #7ac400;
    padding: 6px 14px;
    margin-top: 5px;
    line-height: 16px;
    border-radius: 20px;
}
.carousel .thumb-content .btn:hover, .carousel .thumb-content .btn:focus {
	color: #fff;
	background: #7ac400;
	box-shadow: none;
}
.carousel .thumb-content .btn i {
	font-size: 14px;
    font-weight: bold;
    margin-left: 5px;
}
.carousel .carousel-control {
	height: 44px;
	width: 40px;
	background: none;	
    margin: auto 0;
    border-radius: 4px;
	opacity: 0.8;
}
.carousel .carousel-control i:hover {
	color: #CE181F !important;
	opacity: 1;
}
.carousel .carousel-control i {
    font-size: 36px;
    position: absolute;
    top: 50%;
    display: inline-block;
    margin: -19px 0 0 0;
    z-index: 5;
    left: 0;
    right: 0;
    color: #fff;
	text-shadow: none;
    font-weight: bold;
}
.carousel .item-price {
	font-size: 13px;
	padding: 2px 0;
}
.carousel .item-price strike {
	opacity: 0.7;
	margin-right: 5px;
}
.carousel .carousel-control.left i {
	margin-left: -2px;
}
.carousel .carousel-control.right i {
	margin-right: -4px;
	color: #00549A;
    font-size: 25px;
}
.carousel .carousel-indicators {
	bottom: -50px;
}
.carousel-indicators li, .carousel-indicators li.active {
	width: 10px;
	height: 10px;
	margin: 4px;
	border-radius: 50%;
	border: none;
}
.carousel-indicators li {	
	background: rgba(0, 0, 0, 0.2);
}
.carousel-indicators li.active {	
	background: rgba(0, 0, 0, 0.6);
}
.carousel .wish-icon {
	position: absolute;
	right: 10px;
	top: 10px;
	z-index: 99;
	cursor: pointer;
	font-size: 16px;
	color: #abb0b8;
}
.carousel .wish-icon .fa-heart {
	color: #ff6161;
}
.star-rating li {
	padding: 0;
}
.star-rating i {
	font-size: 14px;
	color: #ffc000;
}
@media (max-width: 463px) {
    .column {
        float: left;
        /* width: 16.66%; */
        width: 23%;
        margin: 0px 1%;
    }
}
</style>
  </head>
  <body>
    <button onclick="topFunction()" id="btn-up-top" ><i class="fa fa-angle-up"></i></button>
    <@renderComponent component=contentModel.header_o.item />
    <div class="content" style="background-color: #FFF;">
        <@renderComponent component=contentModel.slide_o.item />
         <div class="recruitment ">
        <div class="content__title text--center">
            <#list groupProduct.items as cate>
                <#if cate.value == contentModel.productchildgroup_o.item.key>
                   <#assign titleName = cate.label />
                <#else>
                	<#assign titleName = "" />
                </#if>
            </#list>
            <div style="background-color: #00559a; padding:10px;">
                <h1 class="text--uppercase text-white text-left container" id="product-group"></h1>
            </div>
          </div>
        <div class="container p-3 mb-1">         
            <div class="row">
                <div class="col-sm-12 col-md-6 col-lg-6">
                    <#list contentModel.productimage_o.item as myItem>
                    	<div class="mySlides">
                            <img src="${myItem.productimage_s}" alt="${myItem.productimagename_s}" style="width:100%;" width="541" height="380">
                        </div>
                    </#list>
                  <#--<a class="prev" onclick="plusSlides(-1)">❮</a>
                  <a class="next" onclick="plusSlides(1)">❯</a> -->
                
                  <div class="container" style="margin-top: 5px;">
                    <div class="row">
                      <#list contentModel.productimage_o.item as myItem>
                         <div class="column">
                            <img class="demo cursor" src="${myItem.productimage_s}" style="width:100%; height: 80px;" onclick="currentSlide(${myItem?counter})" alt="The Woods">
                          </div>
                      </#list>
                    </div>
                  </div>
                </div>
                <div class="col-sm-12 col-md-6 col-lg-6">
                   <h4 style="background-color: #CE181F; padding:10px;" class="text--uppercase text-white product-name-vn">
                        ${contentModel.productname_s}
                  </h4>
                  
                  <h4 style="background-color: #CE181F; padding:10px;" class="text--uppercase text-white product-name-en">
                        ${contentModel.productnameEnglish_s}
                  </h4>
                  
                  <div style="color: #00559A; padding:10px;">
                      <div class="product-desc-vn">
                        ${contentModel.productdescription_html}
                      </div>
                      <#if (contentModel.productdescriptionEnglish_html)??>
                            <div class="product-desc-en">
                             ${contentModel.productdescriptionEnglish_html}
                           </div>
                      </#if>
                  </div>
                  <div class="d-flex mb-custom">
                    <button class="btn-desc" style="width: 49%; margin-right: 2%;">${contentModel.phonenumber_s}</button>
                    <button class="btn-desc report-price" href="#" style="width: 49%;">Yêu cầu báo giá</button>
                  </div>
                </div>
            </div>
        </div>
        <hr style="border: 3px solid #00559a">
        <div class="container">
            <div class="row">
              <div class="col-lg-6 col-md-6 col-sm-12">
                <h4 style="background-color: #00559a;margin: 12% 0; padding:10px; vertical-align: middle; line-height: normal;" class="text--uppercase text-white text--center product-related">sản phẩm tương tự</h4>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-12">
                     <div class="container product-similar-vn">
                    	<div class="row">
                    		<div class="col-md-12" style="padding:0px;">
                    			<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="0">
                    			<!-- Carousel indicators -->
                    			<!-- Wrapper for carousel items -->
                    			<div class="carousel-inner">
                    				<div class="item carousel-item active">
                    					<div class="row">
                    					 <#--<#if productVNs!?size gt 2 > 
                    					    <#list 0..3 as i>
                                                <div class="col-3 col-custom-450">
                        							<div class="thumb-wrapper">
                        								<span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                        								<div class="img-box">
                        									<a href="${productVNs[i].url}"><img src="${productVNs[i].avatar}" class="img-responsive img-fluid" alt=""></a>
                        								</div>
                        							</div>
                        						</div>
                                            </#list>
                                            <#else>
                                            <#list productVNs as item>
                                                <div class="col-3 col-custom-450">
                        							<div class="thumb-wrapper">
                        								<span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                        								<div class="img-box">
                        									<a href="${item.url}"><img src="${item.avatar}" class="img-responsive img-fluid" alt=""></a>
                        								</div>
                        							</div>
                        						</div>
                                            </#list> 
                                            </#if>-->
                                            <#if (productVNs)??>
                                                <#list productVNs as item>
                                                    <div class="col-3 col-custom-450">
                            							<div class="thumb-wrapper">
                            								<span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                            								<div class="img-box">
                            									<a href="${item.url}"><img src="${item.avatar}" class="img-responsive img-fluid" alt="${item.title}" title="${item.title}"></a>
                            								</div>
                            							</div>
                            						</div>
                                                </#list>
                                            </#if>
                    					</div>
                    				</div>
                    				<div class="item carousel-item">
                    					<div class="row">
                    					   <#-- <#if productVNs!?size gt 2 > 
                    						 <#list 0..3 as i>
                                                <div class="col-3 col-custom-450">
                        							<div class="thumb-wrapper">
                        								<span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                        								<div class="img-box">
                        								    <#if (productVNs[i].url)??>
                        									<a href="${productVNs[i].url}"><img src="${productVNs[i].avatar}" class="img-responsive img-fluid" alt=""></a>
                        								    </#if>
                        								</div>
                        							</div>
                        						</div>
                                            </#list>
                                            <#else>
                                            <#list productVNs as item>
                                                <div class="col-3 col-custom-450">
                        							<div class="thumb-wrapper">
                        								<span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                        								<div class="img-box">
                        									<a href="${item.url}"><img src="${item.avatar}" class="img-responsive img-fluid" alt=""></a>
                        								</div>
                        							</div>
                        						</div>
                                            </#list>
                                            </#if> -->
                                            <#if (productVNs)??>
                                                <#list productVNs as item>
                                                     <div class="col-3 col-custom-450">
                            							<div class="thumb-wrapper">
                            								<span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                            								<div class="img-box">
                            									<a href="${item.url}"><img src="${item.avatar}" class="img-responsive img-fluid" alt="${item.title}" title="${item.title}"></a>
                            								</div>
                            							</div>
                            						</div>
                                                </#list>
                                            </#if>
                    					</div>
                    				</div>
                    			</div>
                    			<!-- Carousel controls -->
                    			<a id="control-next-vn" class="carousel-control right carousel-control-next" style="right: -7%;top: 25%;" href="#myCarousel" data-slide="next">
                    				<i class="fa fa-play"></i>
                    			</a>
                    		</div>
                    	</div>               
                  </div>
                  </div>
                  <#-- EN -->
                  <div class="container product-similar-en">
                    	<div class="row">
                    		<div class="col-md-12" style="padding:0px;">
                    			<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="0">
                    			<!-- Carousel indicators -->
                    			<!-- Wrapper for carousel items -->
                    			<div class="carousel-inner">
                    				<div class="item carousel-item active">
                    					<div class="row">
                    					 <#--<#if productENs!?size gt 2 > 
                    					    <#list 0..3 as i>
                                                <div class="col-3 col-custom-450">
                        							<div class="thumb-wrapper">
                        								<span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                        								<div class="img-box">
                        									<a href="${productENs[i].url}"><img src="${productENs[i].avatar}" class="img-responsive img-fluid" alt=""></a>
                        								</div>
                        							</div>
                        						</div>
                                            </#list>
                                            <#else>
                                            <#list productENs as item>
                                                <div class="col-3 col-custom-450">
                        							<div class="thumb-wrapper">
                        								<span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                        								<div class="img-box">
                        									<a href="${item.url}"><img src="${item.avatar}" class="img-responsive img-fluid" alt=""></a>
                        								</div>
                        							</div>
                        						</div>
                                            </#list>
                                            </#if>-->
                                            <#if (productENs)??>
                                                <#list productENs as item>
                                                    <div class="col-3 col-custom-450">
                            							<div class="thumb-wrapper">
                            								<span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                            								<div class="img-box">
                            									<a href="${item.url}"><img src="${item.avatar}" class="img-responsive img-fluid" alt="${item.titleEN}" title="${item.titleEN}"></a>
                            								</div>
                            							</div>
                            						</div>
                                                </#list>
                                            </#if>
                    					</div>
                    				</div>
                    				<div class="item carousel-item">
                    					<div class="row">
                    					    <#--<#if productENs!?size gt 2 > 
                    						 <#list 0..3 as i>
                                                <div class="col-3 col-custom-450">
                        							<div class="thumb-wrapper">
                        								<span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                        								<div class="img-box">
                        								    <#if (productENs[i].url)??>
                        									<a href="${productENs[i].url}"><img src="${productENs[i].avatar}" class="img-responsive img-fluid" alt=""></a>
                        								    </#if>
                        								</div>
                        							</div>
                        						</div>
                                            </#list>
                                            <#else>
                                            <#list productENs as item>
                                                <div class="col-3 col-custom-450">
                        							<div class="thumb-wrapper">
                        								<span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                        								<div class="img-box">
                        									<a href="${item.url}"><img src="${item.avatar}" class="img-responsive img-fluid" alt=""></a>
                        								</div>
                        							</div>
                        						</div>
                                            </#list>
                                            </#if> -->
                                            <#if (productENs)??>
                                                <#list productENs as item>
                                                     <div class="col-3 col-custom-450">
                            							<div class="thumb-wrapper">
                            								<span class="wish-icon"><i class="fa fa-heart-o"></i></span>
                            								<div class="img-box">
                            									<a href="${item.url}"><img src="${item.avatar}" class="img-responsive img-fluid" alt="${item.titleEN}" title="${item.titleEN}"></a>
                            								</div>
                            							</div>
                            						</div>
                                                </#list>
                                            </#if>
                    					</div>
                    				</div>
                    			</div>
                    			<!-- Carousel controls -->
                    			<a id="control-next-en" class="carousel-control right carousel-control-next" style="right: -7%;top: 25%;" href="#myCarousel" data-slide="next">
                    				<i class="fa fa-play"></i>
                    			</a>
                    		</div>
                    	</div>   
                    </div>
                  </div>
              </div>
            </div>
        </div>
        </div>
        <hr style="border: 3px solid #00559a">
      </div>  
    </div>
    
    <@renderComponent component=contentModel.memberlist_o.item />
    <@renderComponent component=contentModel.footer_o.item />
    <input hidden value="${contentModel.productchildgroup_o.item.key}" id="txt-key"/>
    <div class="lst-parent">
        <#list groupProduct.items as cate>
            <input hidden value="${cate.value}/${cate.label}"/>
        </#list>
    </div>
    <script src="/static-assets/plugins/jquery341/jquery(3.4.1.).js"></script>
    <script src="/static-assets/js/popper.min.js"></script>
    <script src="/static-assets/plugins/bootstrap441/js/bootstrap.min.js"></script>
    <script src="/static-assets/plugins/bootstrap-select1139/dist/js/bootstrap-select.min.js"></script>
    <script src="/static-assets/plugins/owlcarousel234/dist/owl.carousel.min.js"></script>
    <script src="/static-assets/js/language_selector.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/nav.js"></script>
    <script src="/static-assets/js/smooth_scroll.js"></script>
    <script src="/static-assets/js/responsive.js"></script>
    <script src="/static-assets/js/search-bar.js"></script>
    <script src="/static-assets/js/handlebars.min-latest.js"></script>
    <script src="/static-assets/js/jquery.twbsPagination.min.js"></script>
    <script src="/static-assets/js/script.js"></script>
     <script>
      var slideIndex = 1;
      showSlides(slideIndex);
      
      function plusSlides(n) {
        showSlides(slideIndex += n);
      }
      
      function currentSlide(n) {
        showSlides(slideIndex = n);
      }
      
      function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("demo");
        var captionText = document.getElementById("caption");
        if (n > slides.length) {slideIndex = 1}
        if (n < 1) {slideIndex = slides.length}
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex-1].style.display = "block";
        dots[slideIndex-1].className += " active";
        //captionText.innerHTML = dots[slideIndex-1].alt;
      }
      </script>
      
     <script type="text/javascript">
    	$(document).ready(function(){
    		$(".wish-icon i").click(function(){
    			$(this).toggleClass("fa-heart fa-heart-o");
    		});
    		document.title = $('#product-group').text();
    	});	
    	
    	var key = $('#txt-key').val();
    	var url = window.location.href;
    	var lstKey = $('.lst-parent').find('input');
    	
    	// set content change when language changed
    	if (url.indexOf('/en') > -1) {
    	    $('.product-name-vn').css('display', 'none');
    	    $('.product-related').text('Similar product');
    	    $('.report-price').text('Request a quote');
    	    $('.product-desc-vn').css('display', 'none');
    	    $('.product-similar-vn').css('display', 'none');
    	    if ($('.product-similar-en .carousel-item').find('.col-3').length == 0) {
    	        $('#control-next-en').css('display', 'none');
    	    }
    	    $('#policy-vn').css('display', 'none');
    	} else {
    	    $('#policy-en').css('display', 'none');
    	     $('.product-name-en').css('display', 'none');
    	     $('.product-desc-en').css('display', 'none');
    	     $('.product-similar-en').css('display', 'none');
    	     if ($('.product-similar-vn .carousel-item').find('.col-3').length == 0) {
    	        $('#control-next-vn').css('display', 'none');
    	     }
    	}
    	
    	for( let i = 0 ; i< lstKey.length; i++) {
    	    let str = $(lstKey[i]).val();
    	    let splitArr = str.split('/');
    	    if (splitArr[0] == key) {
    	        let productGroupNames = splitArr[1].split('-');
    	        if (url.indexOf('/en') > -1) {
    	             $('#product-group').text(productGroupNames[1]);
    	        } else {
    	            $('#product-group').text(productGroupNames[0]);
    	        }
    	       
    	    }
    	}
    	console.log(lstKey);
    </script>
  </body>
</html>
<@studio.toolSupport />