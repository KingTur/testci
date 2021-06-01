TESTS_PASSED = false
pipeline {
  agent any
  stages {
    stage("build and run tests") {
      steps {
        script {
          dockerTestImage = docker.build "api:$BUILD_NUMBER -f Testdockerfile"
          dockerTestImage.withRun()
        }
        sh 'ls'
      }
    }
    stage("push to registry") {
      steps {
        sh 'ls'
        sh 'pwd'
      }
    }
    stage("deploy") {
      steps {
        echo 'deploying'
      }
    }
  }
}
