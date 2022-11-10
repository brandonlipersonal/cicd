pipeline {
    agent any

    stages {
        // stage('Build') {
        //     steps {
        //     parallel(one: {
        //             echo 'Start building other pipeline'
        //             build 'sample2'
        //         },
        //         two: {
        //             build 'sample3'
        //             echo 'Both projects have been built'
        //         }
        //         )
        //     }
        // }
        // stage('Test') {
        //     steps {
        //         echo 'Test will now begin'  


// def getAllItems() {
//     Jenkins.instance.getAllItems(AbstractItem.class).each {
//         println it.fullName + " - " + it.class
// }

// };

// def job = Hudson.instance.getAllItems(hudson.model.Job.class)
//     println(job.fullName)
    // for singleJob in job:
    //     println(singleJob)

    // def jobFam = "Jenkins"
    // node{
    //     list = ["Jenkins Test 2", "Jenkins Test 3"]
    //     def job = Hudson.instance.getAllItems(hudson.model.Job.class)
    //     def jobs = job.fullName
    //         println(jobs)
    //     def jobName = jobs.findAll{ it.startsWith(jobFam)}
    //         println(jobName)
    //     stage('Test start all Stages') {
    //         for ( name in jobName){
    //             build job: name, wait: false


def jobFam = "sample"

list = ["sample2", "sample3"]
def job = Hudson.instance.getAllItems(hudson.model.Job.class)
def jobs = job.fullName
    println(jobs)
def jobName = jobs.findAll{ it.startsWith(jobFam)}
    println(jobName)
stage('Test start all Stages') {
    for ( name in jobName){
        // build job: name, wait: false
        echo name
    }
}
// extract path to job 
// dropdown to select name
}
}