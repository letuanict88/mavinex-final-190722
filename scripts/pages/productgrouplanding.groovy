import org.craftercms.blueprints.headless.TaxonomySearchHelper

def categories = new TaxonomySearchHelper("product-categories", elasticsearch, siteItemService)
						.getItems()
						
templateModel.groupProduct = categories