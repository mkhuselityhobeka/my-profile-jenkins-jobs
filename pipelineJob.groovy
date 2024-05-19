//declarative pipeline DSL

pipeline {
    agent any
    stages {
        stage ('Build') {
            echo 'building'
        }
        stage ('Test') {
            echo 'Testing'
        }
    }
}
