pipelineJob('minimal-pipeline-job') {
    description('Example with a Jenkinsfile')

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
            scriptPath('src/pipes/Jenkinsfile')
        }
    }
}
