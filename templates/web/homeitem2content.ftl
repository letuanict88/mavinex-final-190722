<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!--<div class="content__img col-sm-12 col-md-6 col-lg-6" <@studio.iceAttr component=contentModel/>>
    <img class="img--full" src="${contentModel.image_s}" alt="Content Image"/>
    <h4 class="text--uppercase text-white" style="padding-top: 15px;">${contentModel.title_s}</h4>
    <a class="content__btn btn mt-3 rounded-0" href="/experience"> 
        <span class="mr-3">Xem thêm</span>
        <i class="fas fa-arrow-right"></i>
    </a>
</div> -->

    <div class="col-sm-12 col-md-6 col-lg-6 content__img" <@studio.iceAttr component=contentModel/>>
        <img class="img--full" src="${contentModel.image_s}" alt="Content Image"/>
        <h4 class="text--uppercase text-white" style="padding-top: 15px; font-size:20px;">${contentModel.title_s}</h4>
        
        <#-- <a class="mt-3 rounded-0 seemore_btn" href="${contentModel.url_s}"> 
            <span class="mr-1">Xem thêm</span>
            <i class="fas fa-play text--red"></i> 
        </a> -->
        <div class="col-lg-6 col-md-6 col-sm-12 col-12 order-3 seemore_btn" style="padding-left: 0px;">
                    
        <a class="mt-3 rounded-0" href="${contentModel.url_s}"> 
            <span class="mr-1 span-view-more">Xem thêm</span>
            <i class="fas fa-play text--red"></i>
        </a>
        </div>
    </div>
<@studio.toolSupport />