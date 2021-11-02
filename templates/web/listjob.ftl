<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content__title">
    <div class="container">
        <div>
          <h1 class="text--red text--title__small">${contentModel.title_s}</h1>
        </div>
    </div>
  </div>
  
  <div class="content__details container text-white">
      <div class="row">
        <div class="col-lg6 col-md-6 col-sm-6 col-6" style="padding: 15px;">
            <#if (jobs)??>
                <#list jobs as job>
                    <a href="${job.url}">	<p class="list-job__item text-white">${job.title}</p> </a>
                </#list>
            </#if>
            <div class="seemore_btn" style="margin-top: 2em">
                <a class="mt-3 rounded-0" href="${contentModel.urlListJobs_s}"> 
                    <span class="mr-1 span-view-more">Xem thêm</span>
                    <i class="fas fa-play text--red"></i>
                </a>
            </div>
        </div>
        <div class="col-lg6 col-md-6 col-sm-6 col-6" >
            <img src="${contentModel.image_s}" alt="" width="100%">
        </div>
      </div>
  </div>
<@studio.toolSupport />