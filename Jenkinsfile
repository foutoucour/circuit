void job(String rubyVersion) {
    node("docker") {
        stage("Checkout") {

            checkout scm
        }


        docker.image("ruby:${rubyVersion}").inside {
            stage("Install Bundler") {
                sh "gem install bundler --no-rdoc --no-ri"
            }

            stage("Use Bundler to install dependencies") {
                sh "bundle install"
            }

            stage('Tests') {
                sh "bundle exec rake test TESTOPTS='-v'"
            }
        }

        // Clean up workspace
        step([$class: 'WsCleanup'])
    }
}

def tasks = [:]
["2.3", "2.4", "2.2", "2.1", "2.0"].each { version ->
    tasks[version] = {job(version)}
}
parallel tasks
