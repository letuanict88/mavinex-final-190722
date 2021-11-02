<#import "/templates/system/common/cstudio-support.ftl" as studio />
    <div class="content__title">
        <div class="container">
            <div>
              <h1 class="text--uppercase text--red">${contentModel.title_s}</h1>
            </div>
        </div>
      </div>
    <div class="content__details container">
        <div class="row">
            <#list contentModel.product_o.item as element>
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 mb-5">
                    <div class="card" style="width: 100%; border: none; border-radius: unset;">
                      <a href="${element.urlpage_s}"><img class="card-img-top" src="${element.avatar_s}" height="350px" alt="Card image cap"></a>
                      <#if element.colortext_s == '1'>
                        	<div class="card-body text-white" style="background-color: #CE181F;">
                                 <a class="text-white link-group-product-vn" href="${element.urlpage_s}"><h4 class="card-text text--uppercase product-title-vie">${element.title_s}</h4></a>
                                 <a class="text-white link-group-product-en" href="${element.urlPageEnglish_s}"><h4 class="card-text text--uppercase product-title-en" >${element.titleEN_s}</h4></a>
                            </div>
                    	<#else>
                    	    <div class="card-body text-white" style="background-color: #00559A;">
                                <a class="text-white link-group-product-vn" href="${element.urlpage_s}"><h4 class="card-text text--uppercase product-title-vie">${element.title_s}</h4></a>
                                <a class="text-white link-group-product-en" href="${element.urlPageEnglish_s}"><h4 class="card-text text--uppercase product-title-en">${element.titleEN_s}</h4></a>
                            </div>
                     </#if>
                    </div>
                </div>
            </#list>
        </div>
    </div>
<@studio.toolSupport />