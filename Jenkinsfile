import com.cwctravel.hudson.plugins.extended_choice_parameter.ExtendedChoiceParameterDefinition


def jobFam = "sample"
node {
    // list = ["sample2.CICD", "sample3.CICD"]
    def job = Hudson.instance.getAllItems(hudson.model.Job.class)
    def jobs = job.fullName
        println(jobs)
    def jobName = jobs.findAll{ it.startsWith(jobFam)}
        println(jobName)
    
    def multiSelect= new ExtendedChoiceParameterDefinition("name",
                "PT_MULTI_SELECT",
                "blue,green,yellow,blue",
                "project name",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "blue,green,yellow,blue",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                false,
                false,
                3,
                "multiselect",
                ",")

    def userInput = input  id: 'customID', message: 'Let\'s promote?', ok: 'Release!', parameters:  [multiSelect]


    echo "Hello: "+ userInput

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
