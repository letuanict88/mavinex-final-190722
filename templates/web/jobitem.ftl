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
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap441/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/static-assets/plugins/bootstrap-select1139/dist/css/bootstrap-select.min.css"/>
    <link rel="stylesheet" href="/static-assets/css/styles.css"/>
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
        <#list (contentModel.slide_o.item)![] as section>
            <@renderComponent parent=contentModel component=section />
        </#list>
        <div class="content" <@studio.iceAttr component=contentModel/>>
            <div class="content__title">
                <div class="container">
                        <div class="content__title">
                          <#if (contentModel.title_s)??>
                          <h2 class="text--red">${contentModel.title_s}</h2>
                          </#if>
                        </div>
                </div>
            </div>
            <div class="content__details container">
                <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6 col-6 text-white" style="padding: 15px;">
                            <span style="color:#fff; font-size:14pt;font-weight: bold" class="job-type">Hình thức tuyển dụng:</span><span>${contentModel.type_s}</span>
                            <#if (contentModel.item_o.item)??>
                                <#list contentModel.item_o.item as element>
                                    <p style="color:#fff; font-size:14pt; font-weight: bold">${element.title_s}</p>
                                    <p class = "job-info__item" style="color:#fff; font-size:14pt;">${element.content_html}</p>
                                </#list>
                            </#if>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 col-6" style="padding: 15px;">
                            <#if (contentModel.image_s)?? >
                            <img src="${contentModel.image_s}" alt="" width="100%">
                            </#if>
                        </div>
                </div>
            
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
    <script src="/static-assets/js/nav.js"></script>
    <script src="/static-assets/js/logos.js"></script>
    <script src="/static-assets/js/smooth_scroll.js"></script>
    <script src="/static-assets/js/responsive.js"></script>
    <script src="/static-assets/js/search-bar.js"></script>
    <script src="/static-assets/js/jquery.twbsPagination.min.js"></script>
    <script src="/static-assets/js/script.js"></script>
    <script>
        var url = window.location.href;
        
        if (url.indexOf('/en') > -1) {
            $('.footer-phone').text('Phone: ');
            $('.footer-tax').text('Tax: ');
            $('.footer-issued-date').text('Date of license: ');
            $('.footer-item__social--title').text('Contact us');
            $('.headquarter').text('Headquarter: ');
            $('.footer-issued-by').text('Issued by: ');
            $('.job-type').text('Type: ');
        }
    </script>
  </body>
</html>
<@studio.toolSupport />