pipelineJob('dockerfile') {
    description('Example with a custom dockerfile')

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
            scriptPath('src/pipes/dockerfile.Jenkinsfile')
        }
    }
}
