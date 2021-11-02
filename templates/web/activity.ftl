<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <div class="content" <@studio.iceAttr component=contentModel/>>
        <div class="content__details container">
            <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                        <#if (contentModel.image_s)?? >
                        <img src="${contentModel.image_s}" alt="Lĩnh vực hoạt động" width="100%">
                        </#if>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                        <#if (contentModel.item_o.item)??>
                                <#list contentModel.item_o.item as element>
                                    <#--<div class="d-flex"> -->
                                    <div class="mavinex-content__text-box">
                                        <div class="activity__content-btn">
                                             <i class="fa fa-play text--red"></i> 
                                        </div>
                                        <#if element?is_odd_item == true>
                                        <div class="mavinex-content__text-box-item mavinex-content__text-box-item mavinex-content__text-box-item--white">
                                            <p style="font-size:12pt; margin: 5px; color:#00549a;">${element.content_t}<p>
                                        </div>
                                        <#else>
                                        <div class="mavinex-content__text-box-item mavinex-content__text-box-item mavinex-content__text-box-item--blue">
                                            <p style="font-size:12pt; margin: 5px; color:#00549a;">${element.content_t}<p>
                                        </div>
                                        </#if>
                                    </div>
                                </#list>
                        </#if>
                    </div>
                    
            </div>
        </div>
<@studio.toolSupport />