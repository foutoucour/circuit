void job(String rubyVersion) {
    node() {
        stage("Checkout") {

            checkout scm
        }
        stage("echo") { echo "maison" }
    }
}

def tasks = [:]
["2.3", "2.4", "2.2", "2.1", "2.0"].each { version ->
    tasks[version] = {job(version)}
}
parallel tasks
