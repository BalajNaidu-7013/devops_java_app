@Library('my-shared-library')  _

pipeline{
    agent any 

    stages{
        stage('Git Checkout'){
            
            steps {
                script{

                    gitCheckout{

                       branch: 'main', 
                       url: 'https://github.com/BalajNaidu-7013/devops_java_app.git'
                    }
                    
                }
            }
        }
    }
}