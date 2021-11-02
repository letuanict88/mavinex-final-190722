<#import "/templates/system/common/cstudio-support.ftl" as studio />
<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>${contentModel.title_s}</title>
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
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-172633935-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
    
      gtag('config', 'UA-172633935-1');
    </script>

  </head>
  <body>
    <button onclick="topFunction()" id="btn-up-top" ><i class="fa fa-angle-up"></i></button>
    <@renderComponent component=contentModel.header_o.item />
    <div class="content">
        <@renderComponent component=contentModel.slide_o.item />
        <div class="content__title">
        <div class="container" style="padding-left:30px;">
            <#if contentModel.categories_o.item.key = "mavinex-news" >
                <h2 style="color:red">Tin Mavinex</h2>
            </#if>
            <#if contentModel.categories_o.item.key ="field-news" >
                <h2 style="color:red">Tin ngành</h2>
            </#if>
            <h3 class="" style="color: #00549a; padding-top:20px;" >${contentModel.title_s}</h3>
            <img style=" padding-top:20px; " class="image-center img-responsive" src="${contentModel.image_s!""}" >
            <div style="color: #00549a; font-size: 16px; padding-top:30px;">${contentModel.content_html}</div>
            <a class="mt-3 rounded-0" href="/tin-tuc">                 
            <i class="fas fa-angle-left text--red"></i>
            <span class="mr-1 text--italic" style="color: #00549a;">Quay lại trang tin tức</span>
            </a>

        </div>
        
      </div>
    </div>
    <@renderComponent component=contentModel.memberlist_o.item />
    <@renderComponent component=contentModel.footer_o.item />
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
  </body>
  <script>
  function goBack() {
  window.history.back();
    }
    
    
    var url = window.location.href;
    
    if (url.indexOf('/en') > -1) {
        $('.footer-phone').text('Phone: ');
        $('.footer-tax').text('Tax: ');
        $('.footer-issued-date').text('Date of license: ');
        $('.footer-item__social--title').text('Contact us');
        $('.headquarter').text('Headquarter: ');
        $('.footer-issued-by').text('Issued by: ')
        $('#policy-vn').css('display', 'none');
        } else {
            $('#policy-en').css('display', 'none');
        }
  </script>
</html>
<@studio.toolSupport />
<@studio.toolSupport />