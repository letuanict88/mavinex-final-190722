<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!-- Handlebar Templates -->
	<script id="search-results-template" type="text/x-handlebars-template">
		{{#each results}}
		    <div class="col-lg-4 col-md-4 col-sm-12 row search-result_content" style="margin-bottom: 20px;">
                <div class="search--img col-lg-6 col-md-6 col-sm-12" >
                    <a href="{{url}}"><img src="{{image}}" alt="" class="img--full"></a>
                </div>
                <div class="search--text col-lg-6 col-md-6 col-sm-12">
                    <a href="{{url}}"><h5 ><b>{{title}}</b></h5></a>
                    {{#if highlight}}
        		        <a href="{{url}}"><p class="limit-text-250">{{{highlight}}}</p></a>
        			{{/if}}
                </div>
            </div>
		{{else}}
		    <p>No results found</p>
		{{/each}}
		
</script>
<div class="content__title" style="background-color: #FFF">
    <div class="container">
    <h1 class="text--red" id="search-title">Kết quả tìm kiếm</h1></div>
</div>
<div class="content__details">
    <div class="container">
    <div class="row " style="padding-left: 15px;">
        <div class="col-lg-12 col-md-12 col-sm-12" style="padding: 0; margin-bottom: 20px;">
            <span id="search-result-vn" style="font-size: 18px;"></p> Tìm được <b class="totalSearch">727</b> kết quả với từ khóa "<b class="keywordSearch"></b>"</span>
            <span id="search-result-en" style="font-size: 18px;"></p> Found <b class="totalSearch">727</b> with the keyword "<b class="keywordSearch"></b>"</span>
        </div>
        <div class="search-result_item row">
        </div>
    </div>
    <div class="col-lg-2 col-md-2 col-sm-12 mx-auto" style="margin-top: 20px;" id="pager">
      <ul class="float-right" id="pagination" class="pagination-sm"></ul>
    </div>
    </div>
</div>
<@studio.toolSupport />