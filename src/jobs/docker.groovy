pipelineJob('docker-agent') {
    description('Example with a Docker agent')

    definition {
        cpsScm {
            scm {
                git {
                    remote {
                        url('https://github.com/yamenw/jenkins-demo.git')
                    }
                    branch('main')
                }
            }
            scriptPath('src/pipes/docker.Jenkinsfile')
        }
    }
}
