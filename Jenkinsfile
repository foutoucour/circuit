pipeline {
    agent{
        label "ruby2.3"
    }

    stages {
        stage('Build') {
            steps {
                sh 'bundle install'
            }
        }
    }
}