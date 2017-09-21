pipeline {
    agent{
        label "ruby2.3"
    }

    stages {
        stage('Set Envivonment') {
            steps {
                sh 'gem install --local bundler'
            }

        }
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