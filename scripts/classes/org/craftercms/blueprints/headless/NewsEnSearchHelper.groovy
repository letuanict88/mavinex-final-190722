package org.craftercms.blueprints.headless

import org.apache.commons.lang3.StringUtils
import org.craftercms.engine.service.UrlTransformationService
import org.elasticsearch.action.search.SearchRequest
import org.elasticsearch.index.query.QueryBuilders
import org.elasticsearch.search.builder.SearchSourceBuilder
import org.elasticsearch.search.sort.FieldSortBuilder
import org.elasticsearch.search.sort.SortOrder

class NewsEnSearchHelper{
    static final String NEWS_CONTENT_TYPE_1 ="content-type:\"/page/pagenewsdetailen\" "
    static final int DEFAULT_START = 0
    static final int DEFAULT_ROWS  = 1000
    
    def elasticsearch
    UrlTransformationService UrlTransformationService
    
    NewsEnSearchHelper(elasticsearch, UrlTransformationService urlTransformationService) {
        this.elasticsearch = elasticsearch
        this.urlTransformationService = urlTransformationService
    }
    
    def searchEnNews(categories, start = DEFAULT_START, rows = DEFAULT_ROWS, additionalCriteria = null){
        def q = "${NEWS_CONTENT_TYPE_1}"
        if(categories){
            def categoriesQuery = getFieldQueryWithMultipleValues("categories_o.item.key",categories)
            q = "${q} AND ${categoriesQuery}"
        }
        
        if (additionalCriteria) {
          q = "${q} AND ${additionalCriteria}"
        }
        
        def builder = new SearchSourceBuilder()
            .query(QueryBuilders.queryStringQuery(q))
            .from(start)
            .size(rows)
        
        def result = elasticsearch.search(new SearchRequest().source(builder))

        if(result){
            return processEnNewsListingResults(result)
        }else{
            return[]
        }
    }
    def processEnNewsListingResults(result){
        def news = []
        def documents = result.hits.hits*.getSourceAsMap()
        if (documents){
            documents.each { doc ->
                def aNews = [:]
                    aNews.title = doc.title_s
                    aNews.image = doc.image_s
                    aNews.content = doc.content_html
                    aNews.category = doc.categories_o.item.key
                    aNews.url = urlTransformationService.transform("storeUrlToRenderUrl", doc.localId)
                news << aNews
            }
        }
        
        return news
    }
}