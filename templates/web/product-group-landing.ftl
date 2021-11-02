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
    <title>${contentModel.product_title_s}</title>
    <style>
        .page-link{
            border-radius :50% !important;
            margin: 0 5px;
        }
    </style>
  </head>
  <body>
    <button onclick="topFunction()" id="btn-up-top" ><i class="fa fa-angle-up"></i></button>
    <@renderComponent component=contentModel.header_o.item />
    <div class="content" >
        <@renderComponent component=contentModel.slide_o.item />
         <div class="recruitment ">
        <div class="content__title text--center ">
            <h1 class="text--uppercase text--red text-left container tittle-vn">${contentModel.product_title_s}</h1>
            <h1 class="text--uppercase text--red text-left container title-en">${contentModel.productGrouptitleEnglish_s}</h1>
        </div>
        <div class="container p-3">         
            <div class="row">
            <#if (contentModel.section_o.item)?? && contentModel.section_o??>
                <#list (contentModel.section_o.item)![] as section>
                    <div class="group-pr-${section?index}">
                        <@renderComponent parent=contentModel component=section />
                    </div>
                </#list>
            </#if>
            </div>
        </div>
    </div>
    <@renderComponent component=contentModel.memberlist_o.item />
    <@renderComponent component=contentModel.footer_o.item />
    <input hidden value="${contentModel.productGroup_o.item.key}" id="txt-key"/>
    <input hidden value="${contentModel.section_o.item?size}" id="group-pr-length"/>
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
    <script src"/static-assets/plugins/panigation/paginga.jquery.js"></script>
    <script src="/static-assets/js/script.js"></script>
    <script>
        $(document).ready(function(){
            var url = window.location.href;
            if (url.indexOf('/en') > -1) {
                document.title = $('.title-en').text();
                $('.list-product-vn').css('display', 'none');
                $('.tittle-vn').css('display', 'none');
                $('.title-en').css('display', 'block');
                $('.product-child-vn').css('display', 'none');
                $('.product-child-en').css('display', 'block');
                $('title').text( $('.title-en').text());
                
                $('.btn-view-more').text('View more');
                $('.footer-phone').text('Phone: ');
                $('.footer-tax').text('Tax: ');
                $('.footer-issued-date').text('Date of license: ');
                $('.footer-item__social--title').text('Contact us');
                $('.headquarter').text('Headquarter: ');
                $('.footer-issued-by').text('Issued by: ');
                $('#policy-vn').css('display', 'none');
                
                // Panigation
                var groupProductSize = $('#group-pr-length').val();
                var limitperPage = 10;
                for(let i = 0; i < groupProductSize; i++) {
                    var numberOfGroupItem = $('.group-pr-'+i).find('.list-product-en .item-pr a').length;
                    var groupItem = $('.group-pr-'+i).find('.list-product-en .item-pr a');
                    var groupItemDiv = $('.group-pr-'+i).find('.list-product-en .item-pr');
                    $('.group-pr-'+i+' .paginate ul').attr('id', 'pagi-'+i);
                    $('.group-pr-'+i+' .paginate ul').find('li').attr('id', 'prevous-item-'+i);
                    $('.pg-vn').css('display', 'none');
                    
                    // hiden element over limitperPage
                    if (numberOfGroupItem > limitperPage) {
                        for(let j = limitperPage; j <  numberOfGroupItem; j++) {
                            $(groupItemDiv[j]).hide();
                            //$(groupItem[j]).attr("style", "display: none !important");
                        }
                        
                    if ((numberOfGroupItem / limitperPage) % 2 == 0) {
                       totalPages =  Math.round(numberOfGroupItem / limitperPage );
                    } else {
                        totalPages =  Math.round(numberOfGroupItem / limitperPage ) + 1;
                    }
                    
                    $('.group-pr-' + i + ' .paginate #pagi-'+i).append("<li class='page-item current-page active'><a class='page-link' href='javacript:void(0)'>"+ 1+"</a></li>");
                    for (let j=2; j<= totalPages;j++){
                         $('.group-pr-' + i + ' .paginate #pagi-'+i).append("<li class='page-item current-page'><a class='page-link' href='javascript:void(0)'>"+ j +"</a></li>");
                    }
                    var strId = "next-page-"+i;
                    $('.group-pr-' + i + ' .paginate #pagi-'+i).append("<li id='"+strId+"' class='page-item'><a class='page-link' href='javascript:void(0)'><span class='fas fa-angle-right'></a></li>");
                
                    $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li.current-page').on("click", function(){
                        if($(this).hasClass("active")){
                            return false;
                        } else{
                            var currentPage = $(this).index();
                            $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li').removeClass("active");
                            $(this).addClass("active");
                            $('.group-pr-'+ i +' .list-product-en .item-pr').hide();
                            var total = limitperPage * currentPage;
                            for(let z = total - limitperPage; z<total; z++){
                                $('.group-pr-'+ i +' .list-product-en .item-pr').eq(z).show();
                            }
                        }
                    });
                    
                    $("#next-page-"+i).on("click", function() {
                      var currentPage = $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li.active').index(); 
                      if (currentPage === totalPages) {
                        return false; 
                      } else {
                        currentPage++; 
                        $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li').removeClass("active");
                        $('.group-pr-' + i +' .list-product-en .item-pr').hide();
                        var total = limitperPage * currentPage; 
                        for(let z = total - limitperPage; z<total; z++){
                            $('.group-pr-'+ i +' .list-product-en .item-pr').eq(z).show();
                        }
                        $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li.current-page:eq('+ (currentPage - 1)+')').addClass('active');
                      }
                    });
                    
                    $('#prevous-item-'+i).on("click", function() {
                      var currentPage = $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li.active').index(); 
                      if (currentPage === 1) {
                        return false; 
                      } else {
                        currentPage--; 
                        $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li').removeClass("active");
                        $('.group-pr-' + i + ' .list-product-en .item-pr').hide();
                        var grandTotal = limitperPage * currentPage; 
                        for (let z = grandTotal - limitperPage; z < grandTotal; z++) {
                           $('.group-pr-'+ i +' .list-product-en .item-pr').eq(z).show();
                        }
                        $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li.current-page:eq('+ (currentPage - 1)+')').addClass('active');
                      }
                    });
                } else {
                    $('.group-pr-' + i + ' .paginate #pagi-'+ i).hide();
                }
            }
                
                
            } else {
                $('.tittle-vn').css('display', 'block');
                $('.title-en').css('display', 'none');
                $('.product-child-vn').css('display', 'block');
                $('.product-child-en').css('display', 'none');
                $('title').text( $('.title-vn').text());
                $('.list-product-en').css('display', 'none');
                $('.pg-en').css('display', 'none');
                $('#policy-en').css('display', 'none');
                
                // Panigation
                var groupProductSize = $('#group-pr-length').val();
                var limitperPage = 10;
                for(let i = 0; i < groupProductSize; i++) {
                    var numberOfGroupItem = $('.group-pr-'+i).find('.list-product-vn .item-pr a').length;
                    var groupItem = $('.group-pr-'+i).find('.list-product-vn .item-pr a');
                    var groupItemDiv = $('.group-pr-'+i).find('.list-product-vn .item-pr');
                    $('.group-pr-'+i+' .paginate ul').attr('id', 'pagi-'+i);
                    $('.group-pr-'+i+' .paginate ul').find('li').attr('id', 'prevous-item-'+i);
                    // hiden element over limitperPage
                    if (numberOfGroupItem > limitperPage) {
                        for(let j = limitperPage; j <  numberOfGroupItem; j++) {
                            $(groupItemDiv[j]).hide();
                        }
                        
                    var totalPages;
                    if ((numberOfGroupItem / limitperPage) % 2 == 0) {
                       totalPages =  Math.round(numberOfGroupItem / limitperPage );
                    } else {
                        totalPages =  Math.round(numberOfGroupItem / limitperPage ) + 1;
                    }
                    
                    $('.group-pr-' + i + ' .paginate #pagi-'+i).append("<li class='page-item current-page active'><a class='page-link' href='javacript:void(0)'>"+ 1+"</a></li>");
                    for (let j=2; j<= totalPages;j++){
                         $('.group-pr-' + i + ' .paginate #pagi-'+i).append("<li class='page-item current-page'><a class='page-link' href='javascript:void(0)'>"+ j +"</a></li>");
                    }
                    var strId = "next-page-"+i;
                    $('.group-pr-' + i + ' .paginate #pagi-'+i).append("<li id='"+strId+"' class='page-item'><a class='page-link' href='javascript:void(0)'><span class='fas fa-angle-right'></a></li>");
                
                    $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li.current-page').on("click", function(){
                        if($(this).hasClass("active")){
                            return false;
                        } else{
                            var currentPage = $(this).index();
                            $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li').removeClass("active");
                            $(this).addClass("active");
                            $('.group-pr-'+i+' .list-product-vn .item-pr').hide();
                            var total = limitperPage * currentPage;
                            for(let z = total - limitperPage; z<total; z++){
                                $('.group-pr-'+ i +' .list-product-vn .item-pr').eq(z).show();
                            }
                        }
                    });
                    
                    $("#next-page-"+i).on("click", function() {
                      var currentPage = $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li.active').index(); 
                      if (currentPage === totalPages) {
                        return false; 
                      } else {
                        currentPage++; 
                        $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li').removeClass("active");
                        $('.group-pr-'+i+' .list-product-vn .item-pr').hide();
                        var total = limitperPage * currentPage; 
                        for(let z = total - limitperPage; z<total; z++){
                            $('.group-pr-'+ i +' .list-product-vn .item-pr').eq(z).show();
                        }
                        $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li.current-page:eq('+ (currentPage - 1)+')').addClass('active');
                      }
                    });
                    
                    $('#prevous-item-'+i).on("click", function() {
                      var currentPage = $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li.active').index(); 
                      if (currentPage === 1) {
                        return false; 
                      } else {
                        currentPage--; 
                        $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li').removeClass("active");
                        $('.group-pr-'+i+ ' .list-product-vn .item-pr').hide();
                        var grandTotal = limitperPage * currentPage; 
                        for (let z = grandTotal - limitperPage; z < grandTotal; z++) {
                           $('.group-pr-'+ i +' .list-product-vn .item-pr').eq(z).show();
                        }
                        $('.group-pr-' + i + ' .paginate #pagi-'+ i +' li.current-page:eq('+ (currentPage - 1)+')').addClass('active');
                      }
                    });
                } else {
                    $('.group-pr-' + i + ' .paginate #pagi-'+ i).hide();
                }
                }
            }
        });
        
    </script>
  </body>
</html>
<@studio.toolSupport />