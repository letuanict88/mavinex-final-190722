<#import "/templates/system/common/cstudio-support.ftl" as studio />
<!--<div id="${contentModel.objectId}" class="carousel slide" data-ride="carousel" <@studio.iceAttr component=contentModel/>>
    <div class="carousel-inner">
        <#if (contentModel.image_o.item)??>
            <#assign first = true>
            <#list contentModel.image_o.item as element>
                <#if first>
                <div class="carousel-item welcome-img active"> 
                    <img src="${element.image_s!""}" class="img-responsive" alt="slide"></div>
                <#assign first = false>
                <#else>
                <div class="carousel-item welcome-img">
                    <img src="${element.image_s!""}" class="img-responsive" alt="slide"></div>
                </#if>
            </#list>
        </#if>
    </div>
    
</div> -->
<!-- slide -->
    <div id="slide" class="mavinex-slide carousel slide" data-ride="carousel">
        <div class="mavinex-slide__imgs carousel-inner">
            <#if (contentModel.image_o.item)??>
            <#assign first = true>
            <#list contentModel.image_o.item as element>
                <#if first>
                    <img class="mavinex-slide__img carousel-item active" src="${element.image_s!""}" alt="Slide Image">
                <#assign first = false>
                <#else>
                    <img class="mavinex-slide__img carousel-item" src="${element.image_s!""}" alt="Slide Image">
                </#if>
            </#list>
        </#if>
        </div>
    </div>
<!-- /slide -->
<@studio.toolSupport />