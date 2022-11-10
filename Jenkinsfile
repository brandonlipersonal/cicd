import org.jenkinsci.plugins.workflow.job.WorkflowJob
import hudson.util.RunList

def jobFam = "sample"
node {
    // list = ["sample2.CICD", "sample3.CICD"]
    def job = Hudson.instance.getAllItems(hudson.model.Job.class)
    def jobs = job.fullName
        println(jobs)
    def jobName = jobs.findAll{ it.startsWith(jobFam)}
        println(jobName)

    WorkflowJob job1 = Jenkins.instance.getItemByFullName( '/main-folder' )
    RunList runList = job1.getBuilds()
    println """
                  all builds : ${job1.getBuildsAsMap().collect{ k, v -> k }}
                build exists : ${job1.getBuilds().collect { it.id }.contains( 25.toString() )}

             completedOnly() : ${runList.completedOnly().collect{ it.id }}
               failureOnly() : ${runList.failureOnly().collect{ it.id }}
              getLastBuild() : ${runList.getLastBuild()}
             getFirstBuild() : ${runList.getFirstBuild()}

     getLastCompletedBuild() : ${job1.getLastCompletedBuild()}
        getLastFailedBuild() : ${job1.getLastFailedBuild()}
        getLastStableBuild() : ${job1.getLastStableBuild()}
    getLastSuccessfulBuild() : ${job1.getLastSuccessfulBuild()}
      getLastUnstableBuild() : ${job1.getLastUnstableBuild()}
  getLastUnsuccessfulBuild() : ${job1.getLastUnsuccessfulBuild()}
                 isInQueue() : ${job1.isInQueue()}
           getActions.causes : ${runList.collect{ run -> run.id + ': ' + run.getActions( jenkins.model.InterruptedBuildAction.class ).causes.flatten().collect{ it.class.simpleName } }}
"""


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
