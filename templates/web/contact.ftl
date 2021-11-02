<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="recruitment">
        <div class="content__title">
        <div class="container">
            <h1 class="text--red">${contentModel.title_s}</h1>
        </div>
          </div>
        <div class="container p-3 text-white" style="">         
            <div class="row">
                <div class="col-sm-12 col-md-6 col-lg-6">
                    <img src="${contentModel.image_s}" class="img--full" alt="">
                </div>
                <div class="col-sm-12 col-md-6 col-lg-6" style="font-size: 20px;">
                      ${contentModel.content_html}
                </div>
            </div>
        </div>
      </div>  
<@studio.toolSupport />