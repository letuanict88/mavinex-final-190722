<#import "/templates/system/common/cstudio-support.ftl" as studio />
        <div class="content__details container"     style="padding-left: 0px;">
        <div class="carousel slide" data-ride="carousel" id="expSlide" <@studio.iceAttr component=contentModel/>>
                <ol class="carousel-indicators">
                <#assign first=true>
                <#list contentModel.image_o.item as element>
                <#if first>
                    <li data-target="#expSlide" data-slide-to="${element.number_s?number - 1}" class="active"><span>${element.number_s}</span></li>
                    <#assign first= false>
                    <#else>
                    <li data-target="#expSlide" data-slide-to="${element.number_s?number - 1}"><span>${element.number_s}</span></li>
                </#if>
                </#list>
                    <li data-target="#expSlide" data-slide="next"><span class="fas fa-angle-right"></span></li>
                </ol>
            <div class="carousel-inner">
                <#if (contentModel.image_o.item)?? && contentModel.image_o??>
                <#assign first = true>
                <#list contentModel.image_o.item as element>
                <#if first>
                    <div class="carousel-item active">
                    <#assign first = false>
                    <#else>
                    <div class="carousel-item">
                    </#if>
                                <div class="container-fluid">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6" style="padding-left: 0px;">
                                        <div>
                                            <img src="${element.image_s}" alt="Slide Image" class="img--full" width="547" height="368">
        
                                            <p class="text--italic text--white" style="padding-top:9px;">${element.image1Title_s}</p>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6" style="padding-left: 0px;">
                                        <div>
                                            <img src="${element.image2_s}" alt="Slide Image" class="img--full" width="547" height="368">
        
                                            <p class="text--italic text--white" style="padding-top:9px;">${element.image2Title_s}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="padding-top: 15px;">
                                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6" style="padding-left: 0px;">
                                        <div>
                                            <img src="${element.image3_s}" alt="Slide Image" class="img--full" width="547" height="368">
        
                                            <p class="text--italic text--white" style="padding-top:9px;">${element.image3Title_s}</p>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6" style="padding-left: 0px;">
                                        <div>
                                            <img src="${element.image4_s}" alt="Slide Image" class="img--full" width="547" height="368">
        
                                            <p class="text--italic text--white" style="padding-top:9px;">${element.image4Title_s}</p>
                                        </div>
                                    </div>
                                </div>
                                </div>
                </div>
                </#list>
                </#if>
                </div>
            </div>
        </div>
        </div>
	<@studio.toolSupport />