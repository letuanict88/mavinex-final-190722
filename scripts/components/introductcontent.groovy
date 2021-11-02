import org.craftercms.blueprints.headless.IntroductSearchHelper


def searchHelper = new IntroductSearchHelper(elasticsearch, urlTransformationService)
def intros = searchHelper.searchIntroducts(null)
println "List introduction:"
print intros

templateModel.intros = intros