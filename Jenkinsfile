pipeline {
    agent{
        docker "ruby:2.3"
        label "docker"
    }

    stages {
        stage('Build') {
            steps {
                sh 'bundle install'
            }
        }
        stage('Tests') {
            steps {
                sh "bundle exec rake test TESTOPTS='-v'"
            }
        }
    }
}