pipeline {
  agent any
  stages {
    stage('Pull source code from SCM') {
      steps {
        echo 'Hello this is pulling source code'
      }
    }

    stage('Build and Compile') {
      steps {
        echo 'Compiling...'
        git >> git.log
        echo git
      }
    }

    stage('Code Coverage') {
      steps {
        echo 'Code Coverage'
      }
    }
  }
}
