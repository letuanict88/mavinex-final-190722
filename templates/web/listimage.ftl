<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content" <@studio.iceAttr component=contentModel/>>
       <h3 class="text--uppercase text-white mb-3">${contentModel.title_s}</h3>
        <div class="carousel slide" id="projects" data-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <div class="row">
                  <div class="content__img text--center col-sm-12 col-md-6 col-lg-6">
                    <#if (contentModel.listImage_o.item ??)>
                        <#list contentModel.listImage_o.item as element>
                            <img class="img--full" src="${element.image_s}" alt="Content Image"/>
                            <p class="text--italic text-white">${element.describe_s}</p>
                        </#list>
                    <#if>
                  </div>
                </div>
            <div>
        </div>
</div>
<@studio.toolSupport />