import org.craftercms.blueprints.headless.SearchContentHelper

println "This is param :"
println params.q
def searchHelper = new SearchContentHelper(elasticsearch, urlTransformationService)

def jobs = searchHelper.searchJobs(params.q)
def intros = searchHelper.searchIntros(params.q)
def news = searchHelper.searchNews(params.q)
def products = searchHelper.searchProducts(params.q)


intros.each{ intro ->
     intro.highlight = intro.highlight.replaceAll("\\<.*?\\>", "");
     
     if (intro.highlight.length() > 100) {
         intro.highlight = intro.highlight.substring(0,100)
         intro.highlight += "..."
     }
 }

jobs.each{ job ->
     job.highlight = job.highlight.replaceAll("\\<.*?\\>", "");
     
     if (job.highlight.length() > 100) {
         job.highlight = job.highlight.substring(0,100)
         job.highlight += "..."
     }
 }

 
 news.each{ new1 ->
     new1.highlight = new1.highlight.replaceAll("\\<.*?\\>", "");
     
     if (new1.highlight.length() > 100) {
         new1.highlight = new1.highlight.substring(0,100)
         new1.highlight += "..."
     }
 }
 
 products.each{ product ->
     product.highlight = product.highlight.replaceAll("\\<.*?\\>", "");
     
     if (product.highlight.length() > 100) {
         product.highlight = product.highlight.substring(0,100)
         product.highlight += "..."
     }
 }

return [jobs, intros, news, products]