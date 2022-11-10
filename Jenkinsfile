def jobFam = ""
node{
    def job = Hudson.instance.getAllItems(hudson.model.Job.class)
    def jobs = job.fullName.findAll{ it.startsWith(env.deployFolder)}
    println(jobs)
    def jobName = jobs.findAll{ it.endsWith(".CICD")}
    println(jobName)
    stage('Test start all Stages') {
        for ( name in jobName){
            // Won't run the job that started the build
            if (name == env.JOB_NAME) {
                continue
            }
            build job: name, wait: false
            echo name
        }
    }
def userId = currentBuild.getBuildCauses('hudson.model.Cause$UserIdCause')[0].userId
fruit_fans = '["ann","bob","zoe"]'
def code = sprintf("""
if ( "%s" in %s) {
    choices = ["Apple","Banana","Cherry"]
} else {
    choices = ["Amaranth","Beet","Cabbage"]
}

return choices
""",userId,fruit_fans)

properties([
    parameters([
        [
            $class: 'ChoiceParameter',
            choiceType: 'PT_MULTI_SELECT',
            description: 'Active Choices Reactive parameter',
            filterLength: 1,
            filterable: false,
            name: 'food',
            referencedParameters: 'role',
            script: [
                $class: 'GroovyScript',
                fallbackScript: [
                    classpath: [],
                    sandbox: false,
                    script: 'return ["error"]'
                ],
                script: [classpath: [],
                    sandbox: false,
                    script: code
                ]
            ]

        ]
    ])
])
node {
    stage("Show Selection"){
        echo "$userId selected $food" 
    }
}
}


// extract path to job 
// Only .CICD for multiselect dropdown
// Multi-select jobs

// Ingest string variable, we tell them to enter their service comma separate if they want to bulk deploy, sample1, sample2, test1, etc.
// String Parameter
// listDeploy
// Takes a list, use a split to split them up
// Contains 
// for name in listdeploy, use a split to split up the commas
// Verification step

// run

// Move bulk deploy job out of folder so we don't need the if statement
// Then we can start using absolute paths