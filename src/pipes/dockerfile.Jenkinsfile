pipeline {
    agent {
        docker {
            file './src/pipes/docker/curl.Dockerfile'
        }
    }
    stages {
        stage('Test') {
            steps {
                sh 'curl -f http://example.com'
            }
        }
    }
}