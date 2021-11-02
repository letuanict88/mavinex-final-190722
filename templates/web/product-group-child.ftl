<#import "/templates/system/common/cstudio-support.ftl" as studio />
      <!-- Handlebar Templates -->
      <script id="search-results-template" type="text/x-handlebars-template">
    		{{#each results}}
    		   <span>{{item}}</span>
    		{{else}}
    		    <p>No results found</p>
    		{{/each}}
    		
     </script>
      <div class="content__details container">
          <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 mb-5">
                <div class="card" style="width: 100%; border: none; border-radius: unset;">
                  <img class="card-img-top" src="${contentModel.productchildavatar_s}" alt="Card image cap">
                  <div class="card-body text-white" style="background-color: #CE181F;position: absolute;top: 78%;; width: 100%;">
                    <p class="card-text text--uppercase product-child-vn" style="font-weight: bold;">${contentModel.productchildtitle_s}</p>
                    <p class="card-text text--uppercase product-child-en" style="font-weight: bold;">${contentModel.productchildtitleEnglish_s}</p>
                  </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 mb-5" >
                <#if productVNs??>
                    <div class="paginate">
                        <div class="list-product-vn items">
                            <#list productVNs as productVN>
                            	<div class="item-pr"><a style="font-size: 16px;" class="text-white d-block pn-pr-vn" href="${productVN.url}">${productVN.title}</a></div>
                            </#list>
                        </div>
                        <ul class="pagination pagi pg-vn mt-3" >
                            <li class="page-item previous-page"><a class="page-link" href="javacript:void(0)"><span class="fas fa-angle-left"></a></li>
                        </ul>
                    </div>
                </#if>
                 <#if productENs??>
                    <div class="paginate">
                        <div class="list-product-en items">
                            <#list productENs as productEN>
                            	<div class="item-pr"><a style="font-size: 16px;" class="text-white d-block pn-pr-en" href="${productEN.url}">${productEN.titleEN}</a></div>
                            </#list>
                        </div>
                        <ul class="pagination pagi pg-en mt-3" >
                            <li class="page-item previous-page"><a class="page-link" href="javacript:void(0)"><span class="fas fa-angle-left"></a></li>
                        </ul>
                    </div>
                </#if>
                <br>
               <ul class="float-right" id="pagination" class="pagination-sm"></ul>
            </div>
          </div>
      </div>
<@studio.toolSupport />