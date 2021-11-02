<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content__title">
    <div class="container" style="padding: 0;"><h1 class="text--red">${contentModel.title_s}</h1></div>
</div>
      <div class="content__details">`
        <div class="job row"  style=" padding: 15px";
>
              <#list jobs as job>
            	<div class="job__item text-white col-sm-12 col-md-4 col-lg-4" >
                        <div class="job__item-content"><a href="#"><img class="img--full" src="${job.image}" alt="Job"/></a>
                          <div class="job__item-infos"><a href="#">
                              <h3 class="job__item-title" style="font-size:16px;">${job.title}</h3></a>
                            <table class="job__item-desc" style="font-size:16px;">
                              <tr>
                                <td class="job-type">Hình thức: </td>
                                <td>${job.type}</td>
                              </tr>
                              <tr>
                                <td class="job-duration">Thời hạn:</td>
                                <td id="job-duration-${job?index}">${job.duration}</td>
                              </tr>
                            </table>
                          </div>
                          <a href="${job.url}" class="job__item-btn btn btn-primary text--uppercase rounded-0 span-view-more">Xem thêm</a>
                        </div>
                      </div>
              </#list>
        </div>
      </div>
      <input hidden id="job-size" value="${jobs?size}"/>
      <script>
        var jobSize = $('#job-size').val();
        for(let i = 0; i < jobSize; i++) {
            var jobDur = $('#job-duration-'+i).text();
            var date = jobDur.split('T');
            var lstDate = date[0].split('-');
            var yyyy = lstDate[0];
            var mm = lstDate[1];
            var dd = lstDate[2];
            $('#job-duration-'+i).text(dd + '/' + mm + '/' + yyyy);
        }
      </script>
<@studio.toolSupport />