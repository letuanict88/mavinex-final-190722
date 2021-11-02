import org.craftercms.blueprints.headless.GroupProductSearchHelper

def productGroup = contentModel.productgrouplevel2_s
print productGroup
def searchHelper = new GroupProductSearchHelper(elasticsearch, urlTransformationService)
def products = searchHelper.searchProducts(productGroup,0)
def productVN = products.findAll { it.url.indexOf('/en') < 0 }
def productEN = products.findAll { it.url.indexOf('/en') > -1}

templateModel.products = products
templateModel.productVNs = productVN
templateModel.productENs = productEN