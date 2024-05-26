//Jenkins job DSL
pipelineJob('pipelineJob') {
    definition {
        cps {
            script(readFileFromWorkspace('pipelineJob.groovy'))
            sandbox()
        }
    }
}
pipelineJob("my-profile-service"){
    definition {
        cpsScm {
            scm {
                git {
                    remote {
                        url 'https://github.com/mkhuselityhobeka/my-profile-service.git'
                    }
                    branch 'develop'
                }

            }
        }
    }
}