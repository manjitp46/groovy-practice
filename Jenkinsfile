pipeline {
    agent any

    stages {
        stage('Load and Execute Script') {
            steps {
                script {
                    // Load the external Groovy script
                    def myscript = load 'scripts/hello.groovy'
                    
                    // Call a function from the loaded script
                    myscript.sayHello('World')
                }
            }
        }
    }
    post{
        always {
            cleanWs()
        }
    }
}
