//declarative pipeline DSL

pipeline {
    agent any
    stages {
        stage ('Build') {
            steps {
                echo 'building'
            }

        }
        stage ('Test') {
            steps {
                echo 'Testing'
            }

        }
    }
}
