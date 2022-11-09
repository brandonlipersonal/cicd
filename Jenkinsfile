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
                },
                three: {
                    echo 'Listing out all jobs in jenkins'
                    getAllItems()
                })

            }
        }
    }
}

def getAllItems() {
    Jenkins.instance.getAllItems(AbstractItem.class).each {
        println it.fullName + " - " + it.class
}

};