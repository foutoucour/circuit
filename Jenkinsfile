pipeline {
    agent("ruby")

    stages {
        stage('Build') {
            steps {
                bundle install
            }
        }
        stage('Test') {
            steps {
                bundle exec rake test TESTOPTS='-v'
            }
        }
    }
}