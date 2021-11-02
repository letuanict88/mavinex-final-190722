<#import "/templates/system/common/cstudio-support.ftl" as studio />
  <div class="content__item" id="expertise" <@studio.iceAttr component=contentModel/>>
     <div class="content__title">
                <div class="container">
                        <div class="content__title">
                          <#if (contentModel.title_s)??>
                          <h1 class="text--red" style="font-weight: bold; font-family: UVF-DINPro Bold;">${contentModel.title_s}</h1>
                          </#if>
                        </div>
                </div>
        </div>
    <div class="content__details container" style="flex-flow: wrap-reverse; padding-left: 15px;">
        <div class="row">
            <#list contentModel.contentitem_o.item as content>
                <@renderComponent component=content />
            </#list>
        </div>
    </div>
  </div>
<@studio.toolSupport />