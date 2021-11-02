<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content" <@studio.iceAttr component=contentModel/>>
    <div class="content__title">
            <div class="container">
                <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                          <h1 class="text--red">${contentModel.itemTitle_s}</h1>
                        </div>
                </div>
            </div>
    </div>
    <div class="content__details container">
            <div class="row" style="padding-left: 15px;">
                ${contentModel.itemContent_html}
            </div>
            <div class="row">
            <i class="fas fa-play text--red" style="padding-top: 5px;"></i><p class="text-white" style="padding-left:10px; font-size:14pt; font-weight:bold;">${contentModel.groupTitle_s}</p>
            </div>
            <ol>
            <#list contentModel.group_o.item as group>
            <div class="row">    
                
       
                
                
                <li style="list-style-type: none; padding-left:10px;"><p class="text-white" style="font-size:14pt; font-weight:bold;"><span style="font-size:17pt;">-</span>  ${group.groupContent_s}</p></li>    
                
            </div>
            </#list>
            </ol>
            <div class="row">
            <i class="fas fa-play text--red" style="padding-top: 5px;"></i><p class="text-white" style="padding-left:10px; font-size:14pt; font-weight:bold;">${contentModel.carouselTitle_s}</p>
            </div>
            <div class="row" <@studio.componentContainerAttr target="carousels" objectId=contentModel.objectId/>>
                <#if contentModel.carousels_o?? && contentModel.carousels_o.item??>
                    <div style="color: #fff;">
                    <#list contentModel.carousels_o.item as carousel>
                            <@renderComponent component=carousel />
                    </#list>
                    </div>
                </#if>
            </div>
    </div>
</div>
    
        
<@studio.toolSupport />