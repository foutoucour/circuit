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
        stage('Tests') {
            steps {
                sh "bundle exec rake test TESTOPTS='-v'"
            }
        }
    }
}