package org.craftercms.blueprints.headless

import org.apache.commons.lang3.StringUtils
import org.craftercms.engine.service.UrlTransformationService
import org.elasticsearch.action.search.SearchRequest
import org.elasticsearch.index.query.QueryBuilders
import org.elasticsearch.search.builder.SearchSourceBuilder
import org.elasticsearch.search.sort.FieldSortBuilder
import org.elasticsearch.search.sort.SortOrder

class GroupProductSearchHelper {
    static final String PRODUCT_CONTENT_TYPE_QUERY = "content-type:\"/page/productdetail\""
    static final int DEFAULT_START = 0
    static final int DEFAULT_ROWS = 1000
    
    def elasticsearch
    UrlTransformationService urlTransformationService
    
    GroupProductSearchHelper(elasticsearch, UrlTransformationService urlTransformationService) {
        this.elasticsearch = elasticsearch
        this.urlTransformationService = urlTransformationService
    }
    
    def searchProducts(groupProduct, start = DEFAULT_START, rows = DEFAULT_ROWS, additionalCriteria = null) {
        def q = "${PRODUCT_CONTENT_TYPE_QUERY}"
        
        if (groupProduct) {
            def productGroupQuery = getFieldQueryWithMultipleValues("productchildgroup_o.item.key", groupProduct)
            q = "${q} AND ${productGroupQuery}"
        }
        
        if (additionalCriteria) {
          q = "${q} AND ${additionalCriteria}"
        }
        
        def builder = new SearchSourceBuilder()
            .query(QueryBuilders.queryStringQuery(q))
            .from(start)
            .size(rows)
        
        def result = elasticsearch.search(new SearchRequest().source(builder))
        
        if (result) {
            return processProductListingResults(result)
        } else {
            result [];
        }
    }
    
    private def processProductListingResults(result) {
        def products = []
        def documents = result.hits.hits*.getSourceAsMap()
        
        if (documents) {
            documents.each {doc ->
                def product = [:]
                    product.title = doc.productname_s
                    product.titleEN = doc.productnameEnglish_s
                    product.summary = doc.productdescription_html
                    product.url = urlTransformationService.transform("storeUrlToRenderUrl", doc.localId)
                    product.avatar = doc.productAvatar_s
                products << product
            }
        }
        
        return products
    }
    
    private def getFieldQueryWithMultipleValues(field, values) {
        if (values.class.isArray()) {
          values = values as List
        }
    
        if (values instanceof Iterable) {
          values = "(" + StringUtils.join((Iterable)values, " OR ") + ")"
        } else {
          values = "\"${values}\""
        }
    
        return "${field}:${values}"
    }
}