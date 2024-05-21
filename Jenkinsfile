pipeline {
    agent any

    parameters{
        string(name: 'LIB_VERSION', defaultValue: '1.0', description: 'Version of the shared library')
    }

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

        stage("this is my custom stage to execute shell script") {
            steps{
                step {
                    sh 'echo "this is library version ${LIB_VERSION}"'
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
