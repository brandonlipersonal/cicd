pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Start building other pipeline'
                build 'sample2'
                build 'sample3'
            }
        }
    }
}