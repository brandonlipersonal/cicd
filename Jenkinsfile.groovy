Jenkinsfile (Declarative Pipeline)
pipeline {
    agent { docker { image 'node:16.13.1-alpine' } }
    stages {
        stage('Build') {
            steps {
                sh 'node --version'
                sh 'echo "Hello World"'
                sh '''
                    echo "Multiline shell works too"
                    ls -lah
                '''
            }
        }
    }
}