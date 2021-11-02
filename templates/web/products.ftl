<#import "/templates/system/common/cstudio-support.ftl" as studio />
	<div <@studio.iceAttr component=contentModel/>>
	<div class="content__title">
            <div class="container">
                <h1 class="text--red" style="font-weight: bold; font-family: UVF-DINPro Bold;">${contentModel.tittle_s}</h1>
            </div>
    </div>
	<div id="production" class="carousel slide" data-ride="carousel" style="background-color: #fff">
            <div class="mavinex-overlay"></div>
            <div class="mavinex-products">
                <div class="mavinex-products__content carousel-inner container">
                    <#if (contentModel.products_o)??>
                    <#assign first = true>
                    <#list contentModel.products_o.item as item>
                    <#if first>
                        <div class="carousel-item active">
                        <#assign first = false>
                        <#else>
                        <div class="carousel-item">
                        </#if>
                            <div class="mavinex-products__items row">
                            
                                <div class="mavinex-products__item col-xs-6 col-sm-6 col-md-6 col-lg-3 p-0">
                                    <a href="${item.pLink1_s}">
                                    <div class="mavinex-products__item-title mavinex-products__item-title--bg-blue">
                                        <div class="mavinex-products__item-text" >
                                            <h4 style="font-weight: bold; font-family: UVF-DINPro Bold;">${item.pTittle1_s}</h4>
                                        </div>
                                    </div>
                                    
                                    <img class="mavinex-products__item-img" src="${item.pImage1_s}" alt="Carousel Image">
                                    </a>
                                </div>
                                
    
                                <div class="mavinex-products__item col-xs-6 col-sm-6 col-md-6 col-lg-3 p-0">
                                    <a href="${item.pLink2_s}">
                                    <div class="mavinex-products__item-title mavinex-products__item-title--bg-red">
                                        <div class="mavinex-products__item-text">
                                            <h4 style="font-weight: bold; font-family: UVF-DINPro Bold;">${item.pTittle2_s}</h4>
                                        </div>
                                    </div>
                                    
                                    <img class="mavinex-products__item-img" src="${item.pImage2_s}" alt="Carousel Image">
                                    </a>
                                </div>
    
                                <div class="mavinex-products__item col-xs-6 col-sm-6 col-md-6 col-lg-3 p-0">
                                    <a href="${item.pLink3_s}">
                                    <div class="mavinex-products__item-title mavinex-products__item-title--bg-blue">
                                        <div class="mavinex-products__item-text">
                                            <h4 style="font-weight: bold; font-family: UVF-DINPro Bold;">${item.pTittle3_s}</h4>
                                        </div>
                                    </div>
                                    
                                    <img class="mavinex-products__item-img" src="${item.pImage3_s}" alt="Carousel Image">
                                    </a>
                                </div>
    
                                <div class="mavinex-products__item col-xs-6 col-sm-6 col-md-6 col-lg-3 p-0">
                                    <a href="${item.pLink4_s}">
                                    <div class="mavinex-products__item-title mavinex-products__item-title--bg-red">
                                        <div class="mavinex-products__item-text">
                                            <h5 style="font-weight: bold; font-family: UVF-DINPro Bold;">${item.pTittle4_s}</h5>
                                        </div>
                                    </div>
                                    
                                    <img class="mavinex-products__item-img" src="${item.pImage4_s}" alt="Carousel Image">
                                    </a>
                                </div>
                            </div>
                    </div>
                </#list>
                </#if>
                </div>
                <div class="test">
                    <a class="mavinex-products__ctrl-btn carousel-control-prev" href="#production" role="button" data-slide="prev">
                        <img src="${contentModel.arrow1_s}" alt="Left Arrow">
                    </a>
                    <a class="mavinex-products__ctrl-btn carousel-control-next" href="#production" role="button" data-slide="next">
                        <img src="${contentModel.arrow2_s}" alt="Right Arrow">
                    </a>
                </div>
            </div>
        </div>
    </div>
<@studio.toolSupport />