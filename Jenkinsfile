def jobFam = ""
node{
    list = ["Jenkins Test 2", "Jenkins Test 3"]
    def job = Hudson.instance.getAllItems(hudson.model.Job.class)
    def jobs = job.fullName.findAll{ it.startsWith(env.deployFolder)}
    println(jobs)
    def jobName = jobs.findAll{ it.endsWith(".CICD")}
    println(jobName)
    stage('Test start all Stages') {
        for ( name in jobName){
            build job: name, wait: false
            echo name
        }
    }
}


// extract path to job 
// dropdown to select name
// Try using choice parameter
// create list for a folder contents
// Only .CICD for multiselect dropdown
// sample .CICD and .CICD.RTC
