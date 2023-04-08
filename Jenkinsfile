pipeline{
    agent any 

    stages{
        stage('Git Checkout'){
            
            steps {
                script{
                    git branch: 'main', 
                    url: 'https://github.com/BalajNaidu-7013/devops_java_app.git'
                }
            }
        }
    }
}