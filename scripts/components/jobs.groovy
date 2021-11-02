
import org.craftercms.blueprints.headless.JobSearchHelper


def searchHelper = new JobSearchHelper(elasticsearch, urlTransformationService)
def jobs = searchHelper.searchJobs(null)
templateModel.jobs = jobs


