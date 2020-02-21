node {
    stage('Checkout') {
        git 'c:/software/repos/simplegreeting.git'
    }
    stage('Delete previous build') {
        bat 'mvn clean'
    }
    stage('Build') {
        bat 'mvn package'
    }
    stage('Unit Tests') {
        bat 'mvn test'
    }
    stage('Deploy to local repository') {
        bat 'mvn install'
    }
    stage('Deploy to nexus') {
        bat 'mvn deploy -s c:/users/wasadmin/.m2/settings.xml'
    }
    stage('Code Quality Check') {
        bat 'mvn sonar:sonar -Dsonar.host.url=http://localhost:9000/sonar'
    }
    stage('User Acceptance Test') {
        input 'Perform deployment?'
        stage('Deploy') {
            echo 'Done'
        }
    }
    
}