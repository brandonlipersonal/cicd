def jobFam = "sample"
node {
    // list = ["sample2.CICD", "sample3.CICD"]

    def jobname="build-my-project"
    def list=[]
    hudson.model.AbstractProject<?, ?> otherJob = jenkins.model.Jenkins.getInstance().getItemByFullName(jobname, hudson.model.AbstractProject.class)
    hudson.util.RunList<?> builds = otherJob.getBuilds().overThresholdOnly(hudson.model.Result.SUCCESS)
    builds.limit(20).each{run -> list.add(run.displayName) }
    list

    // def job = Hudson.instance.getAllItems(hudson.model.Job.class)
    // def jobs = job.fullName
    //     println(jobs)
    // def jobName = jobs.findAll{ it.startsWith(jobFam)}
    //     println(jobName)
    // stage('Test start all Stages') {
    //     for ( name in jobName){
    //         build job: name, wait: false
    //         echo name
    //     }
    // }
}
// def setJobList () {
//     node {
//         stage('Display Dropdown') {
//             if (envJobList == "null") {
//                 envJobList="DSIT,PTE,SAT,PSU,END"
//                 println("No value provided, dropdown is: ${envJobList}")
//             }
//             tempList = envJobList
//             println("Job list value is: ${tempList}")

//         }
//     }
// }


// extract path to job 
// dropdown to select name
// Try using choice parameter
// create list for a folder contents
// Only .CICD for multiselect dropdown
// sample .CICD and .CICD.RTC
