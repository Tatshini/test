pipeline {
    agent { label 'buildagent' } 
    stages {
        stage('Checkout') {
            steps {
                sh "sh subnet.sh > commandResult"
                result = readFile('commandResult').trim()
                println(result);
                //sh 'mvn --version'
            }
        }
    }
}
