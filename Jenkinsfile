pipeline {
    agent { label 'buildagent' } 
    stages {
        stage('Checkout') {
            steps {
		docker-compose down
		docker-compose up -d
		//docker run --rm -v /home/faizal/work:/home store/oracle/database-instantclient:12.2.0.1 sqlplus C##DEVOPS/devops123@52.226.133.58:1521/cdb1 @/home/chat_DB.sql
            }
        }
    }
}
