pipeline {
    agent any

    stages {
        stage('Deploy Script to VM') {
            steps {
                withCredentials([sshUserPrivateKey(
                    credentialsId: 'vm-ssh',
                    keyFileVariable: 'SSH_KEY',
                    usernameVariable: 'SSH_USER'
                )]) {
                    bat '''
                    scp -o StrictHostKeyChecking=no -i "%SSH_KEY%" system_maintenance.sh %SSH_USER%@192.168.1.14:/home/vboxuser/system_maintenance.sh
                    '''
                }
            }
        }
    }
}