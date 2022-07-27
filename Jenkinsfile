pipeline {
  agent any
  stages {
    stage('Pull source code from SCM') {
      steps {
        sh 'echo \'Hello World\''
      }
    }

    stage('Build and Compile') {
      steps {
        echo 'Compiling...'
      }
    }

    stage('Code Coverage') {
      steps {
        echo 'Code Coverage'
      }
    }

  }
}