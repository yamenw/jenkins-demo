pipeline {
    agent {
        dockerfile {
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
