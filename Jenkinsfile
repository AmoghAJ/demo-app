pipeline {
    agent any
    parameters {
        string(name: 'VERSION', defaultValue: 'v1', description: 'Application version')
    }
    stages {
        stage('Generate dockerfile') { 
            steps {
                sh "sed 's/#{VERSION}/${params.VERSION}/g' Dockerfile-template > Dockerfile"
            }
        }
        stage('Build image') {
            steps {
                sh "docker build . -t demo-app:${params.VERSION}"
            }
        }
    }
}