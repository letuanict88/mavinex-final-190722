package org.craftercms.blueprints.headless

import groovy.util.logging.Slf4j
import org.apache.commons.lang3.StringUtils
import org.craftercms.engine.service.UrlTransformationService
import org.elasticsearch.action.search.SearchRequest
import org.elasticsearch.index.query.QueryBuilders
import org.elasticsearch.search.builder.SearchSourceBuilder
import org.elasticsearch.search.sort.FieldSortBuilder
import org.elasticsearch.search.sort.SortOrder

class JobEnSearchHelper {
    static final String JOB_CONTENT_TYPE_QUERY = "content-type:\"/page/joben\""
    static final String[] HIGHLIGHT_FIELDS = ["title_s", "item_o.item.content_html"]
    static final int DEFAULT_START = 0
    static final int DEFAULT_ROWS = 50
    
    def elasticsearch
    UrlTransformationService urlTransformationService
    JobEnSearchHelper(elasticsearch, UrlTransformationService urlTransformationService) {
        this.elasticsearch = elasticsearch
        this.urlTransformationService = urlTransformationService
    }
    
    def searchJobs(categories, start = DEFAULT_START, rows = DEFAULT_ROWS, additionalCriteria = null) {
        def q = "${JOB_CONTENT_TYPE_QUERY}"
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
        
        def result = elasticsearch.search(new SearchRequest().source(builder))
        
        if (result) {
          return processJobListingResults(result)
        } else {
          return []
        }
    }
    def processJobListingResults(result) {
        def jobs = []
        def documents = result.hits.hits*.getSourceAsMap() 
        if (documents) {
          documents.each {doc ->
            def job = [:]
                job.title = doc.title_s
                job.type = doc.type_s
                   job.duration =  doc.duration_dt
                job.url = urlTransformationService.transform("storeUrlToRenderUrl", doc.localId)
                job.image = doc.image_s
    
            jobs << job
          }
        }
        
        return jobs
    }
}