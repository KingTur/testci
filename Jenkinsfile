TESTS_PASSED = false
pipeline {
  agent any
  stages {
    stage("build and run tests") {
      steps {
        script {
          dockerTestImage = docker.build("api:$BUILD_NUMBER", "-f Testdockerfile .")
        }
        script {
          dockerTestContainer = dockerTestImage.run("--name api_container_$BUILD_NUMBER")
        }
        sh "docker logs api_container_$BUILD_NUMBER"
        script {
          dockerTestContainer.stop()
        }
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
