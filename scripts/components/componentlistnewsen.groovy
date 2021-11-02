import org.craftercms.blueprints.headless.NewsEnSearchHelper


def searchHelper = new NewsEnSearchHelper(elasticsearch, urlTransformationService)
def news = searchHelper.searchEnNews(null)
println "News:"
print news

templateModel.news = news