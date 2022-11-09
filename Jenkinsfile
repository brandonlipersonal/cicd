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
                    // build 'sample3'
                    build job: "./*", wait: true
                    echo 'Both projects have been built'
                }
                )
            }
        }
        stage('Test') {
            steps {
                echo 'Test will now begin'
                // script {
                //     build job: "/"
                // }   
            }
        }     
    }
}

// def getAllItems() {
//     Jenkins.instance.getAllItems(AbstractItem.class).each {
//         println it.fullName + " - " + it.class
// }

// };

def job = Hudson.instance.getAllItems(hudson.model.Job.class)
    println(job.fullName)