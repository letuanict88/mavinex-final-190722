<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content" <@studio.iceAttr component=contentModel/>>
  <div class="content__title">
        <div class="container">
            <div class="row">
                <#list 0..1 as i>
                	<div class="col-lg-6 col-md-6 col-sm-6 col-6">
                      <h2 class="text--red text--title__small" >${contentModel.introduct_o.item[i].introductitemtitle_s}</h2>
                    </div>
                </#list>
            </div>
        </div>
      </div>
      <div class="content__details container">
          <div class="row">
            <#list 0..1 as i>
                <div class="col-lg6 col-md-6 col-sm-6 col-6">
                    <img src="${contentModel.introduct_o.item[i].introducitemavatar_s}" alt="" class="img--full">
                </div>
            </#list>
            
            <#list 0..1 as i>
                <div class="col-lg6 col-md-6 col-sm-6 col-6 seemore_btn">
                     <a class="mt-3 rounded-0" href="${contentModel.introduct_o.item[i].introductUrl_s}"> 
                        <span class="mr-1 title-vn">Xem thêm</span>
                        <span class="mr-1 title-en">See more</span>
                        <i class="fa fa-play text--red"></i>
                    </a>
                </div>
            </#list>
          </div>
      </div>

      <div class="content__title">
        <div class="container">
            <div class="row">
                <#list 2..3 as i>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-6">
                      <h2 class="text--red text--title__small" >${contentModel.introduct_o.item[i].introductitemtitle_s}</h2>
                    </div>
                </#list>
            </div>
        </div>
      </div>
      <div class="content__details container">
          <div class="row">
            <#list 2..3 as i>
                <div class="col-lg6 col-md-6 col-sm-6 col-6">
                    <img src="${contentModel.introduct_o.item[i].introducitemavatar_s}" alt="" class="img--full">
                </div>
            </#list>
            <#list 2..3 as i>
                <div class="col-lg6 col-md-6 col-sm-6 col-6 seemore_btn">
                     <a class="mt-3 rounded-0" href="${contentModel.introduct_o.item[i].introductUrl_s}"> 
                        <span class="mr-1 title-vn">Xem thêm</span>
                        <span class="mr-1 title-en">See more</span>
                        <i class="fa fa-play text--red"></i>
                    </a>
                </div>
            </#list>
          </div>
      </div>    
</div>
<script>
     $(document).ready(function(){
            var title= $('')
            var url = window.location.href;
            if (url.indexOf('/en') > -1) {
                $('.title-vn').css('display', 'none');
                $('.title-en').css('display', 'inline');
            } else {
                $('.title-vn').css('display', 'inline');
                $('.title-en').css('display', 'none');
            }
        });
</script>
<@studio.toolSupport />