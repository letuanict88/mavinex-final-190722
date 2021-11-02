import org.craftercms.blueprints.headless.NewsSearchHelper


def searchHelper = new NewsSearchHelper(elasticsearch, urlTransformationService)
def news = searchHelper.searchNews(null)
println "News:"
print news.size

templateModel.news = news