package org.craftercms.blueprints.headless

import groovy.util.logging.Slf4j
import org.apache.commons.lang3.StringUtils
import org.craftercms.engine.service.UrlTransformationService
import org.elasticsearch.action.search.SearchRequest
import org.elasticsearch.index.query.QueryBuilders
import org.elasticsearch.search.builder.SearchSourceBuilder
import org.elasticsearch.search.sort.FieldSortBuilder
import org.elasticsearch.search.sort.SortOrder


class IntroductSearchHelper {
    static final String INTRO_CONTENT_TYPE_QUERY = "content-type:\"/page/introductiondetail\""
    static final String[] HIGHLIGHT_FIELDS = ["title_s"]
    static final int DEFAULT_START = 0
    static final int DEFAULT_ROWS = 50
    
    def elasticsearch
    UrlTransformationService urlTransformationService
    
    IntroductSearchHelper(elasticsearch, UrlTransformationService urlTransformationService) {
        this.elasticsearch = elasticsearch
        this.urlTransformationService = urlTransformationService
    }
    
    def searchIntroducts(categories, start = DEFAULT_START, rows = DEFAULT_ROWS, additionalCriteria = null) {
        def q = "${INTRO_CONTENT_TYPE_QUERY}"
        
        if (categories) {
            def categoriesQuery = getFieldQueryWithMultipleValues("categories_o.item.key", categories)
            q = "${q} AND ${categoriesQuery}"
        }
        
        if (additionalCriteria) {
          q = "${q} AND ${additionalCriteria}"
        }
        
        def builder = new SearchSourceBuilder()
                        .query(QueryBuilders.queryStringQuery(q))
                        .from(start)
                        .size(rows)
//  .sort(new FieldSortBuilder("title_s").order(SortOrder.ASC))
            
        def result = elasticsearch.search(new SearchRequest().source(builder))
        
        if (result) {
          return processIntroListingResults(result)
        } else {
          return []
        }
    }
    
    def processIntroListingResults(result) {
        def intros = []
        def documents = result.hits.hits*.getSourceAsMap()
        
        if (documents) {
          documents.each {doc ->
            def intro = [:]
                intro.title = doc.title_s
                intro.avatar = doc.thumbail_s
                intro.url = urlTransformationService.transform("storeUrlToRenderUrl", doc.localId)
            intros << intro
          }
        }
        
        return intros
    }
}