<#import "/templates/system/common/cstudio-support.ftl" as studio />
<#if contentModel.isVerticalContent_b == false>
    <div class="content" <@studio.iceAttr component=contentModel/>>
        <div class="content__title">
                <div class="container">
                        <div class="content__title">
                          <#if (contentModel.title_s)??>
                          <h1 class="text--red" style="font-weight: bold; font-family: UVF-DINPro Bold;">${contentModel.title_s}</h1>
                          </#if>
                        </div>
                </div>
        </div>
        <div class="content__details container" style="padding-left: 15px;">
            <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-12  order-1">
                        <#if (contentModel.item_o.item)??>
                                <#list contentModel.item_o.item as element>
                                   <p style="color:#fff; font-size: 18px; " id="order-1">${element.content_t}<p>
                                </#list>
                        </#if>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-12 order-2">
                        <#if (contentModel.image_s)?? >
                        <img src="${contentModel.image_s}" alt="" class="img--full">
                        </#if>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-12 order-3 seemore_btn">
                        <a class="mt-3 rounded-0 btn-view-more" id="btn-intro" href="/gioi-thieu"> 
                            <span class="mr-1 span-view-more">Xem thêm</span>
                            <i class="fas fa-play text--red"></i>
                        </a>
                    </div>
            </div>
        </div>
    <#else>
        <div class="content" <@studio.iceAttr component=contentModel/>>
            <div class="content__title">
                    <div class="container">
                        <div class="row">
                            <div class="content__title text--center">
                              <#if (contentModel.itemTitle_s)??>
                              <h2 class="text--red" style="font-weight: bold;">${contentModel.itemTitle_s}</h2>
                              </#if>
                            </div>
                        </div>
                    </div>
            </div>
            <div class="content__details row">
              <div class="content__img col-12"><img class="img--full" src="${contentModel.image_s}" alt="Content Image"/></div>
              <div class="content__text activity-list col-12">
                <#if (contentModel.item_o.item)??>
                    <#list contentModel.item_o.item as element>
                        <div class="activity-list__content">
                          
                            <p>${element.content_t}</p>
                          </div>
                        </div>
                    </#list>
                </#if>
              </div>
            </div>
      </div>

    </#if>
    <script>
        $('#order-1').each(function (f) {
      var newstr = $(this).text().substring(0,450);
      $(this).text(newstr).append("...");
    });
    </script>
<@studio.toolSupport />