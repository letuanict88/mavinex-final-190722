<#import "/templates/system/common/cstudio-support.ftl" as studio />
<div class="content">
      <div class="container" style="padding: 20px;">
    <div class="row" style="background-color: #FFF;padding-top: 20px;">
        <#list contentModel.logo_o.item as logo>
            <div class="col-3">
                 <div style="padding-bottom:20px;">
                  <img class="partnership-img" style="border: 6px solid #00549A; padding:15%;" width="230" height="230" src="${logo.partnerimage_s}" alt="${logo.partnerimagealt_s}"/>
                </div>
            </div>
        </#list>
    </div>
  </div>
</div>
<@studio.toolSupport />