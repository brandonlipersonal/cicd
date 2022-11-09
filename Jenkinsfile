pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
            parallel(one: {
                    echo 'Start building other pipeline'
                    build 'sample2'
                },
                two: {
                    build 'sample3'
                    echo 'Both projects have been built'
                }
                )
            }
        }
        stage('Test') {
            steps {
                // echo "${getAllItems()}"
                echo 'Test will now begin'
            }
        }     
    }
}

// def getAllItems() {
//     Jenkins.instance.getAllItems(AbstractItem.class).each {
//         println it.fullName + " - " + it.class
// }

// };

Jenkins.instance.getAllItems(Job).each{
  def jobBuilds=it.getBuilds()G
  // Check the last build only
  jobBuilds[0].each { build ->
    def runningSince = groovy.time.TimeCategory.minus( new Date(), build.getTime() )
    def currentStatus = build.buildStatusSummary.message
    def cause = build.getCauses()[0]
    def causeClass = cause.getClass().getSimpleName()
    switch (causeClass) {
      case "BranchEventCause":
        println "[Branch Event] ${build}"
        break;
      case "BranchIndexingCause":
        println "[Branch Indexing] ${build}"
        break;
      case "UserIdCause":
        def user = cause.getUserId()
        println "[${user}] ${build}"
        break;
      case "TimerTriggerCause":
        println "[Timer Trigger] ${build}"
        break;
    }
  }
}
return