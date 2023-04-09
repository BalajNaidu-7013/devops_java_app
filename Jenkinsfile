@Library('my-shared-library')  _

pipeline{
    agent any 

   
    parameters{

        choice(name: 'action', choices: 'create\ndelete', description: 'Choose create/Destroy')
        
    }

    stages{
        stage('Git Checkout'){

            when { expression {  params.action == 'create' } }

            steps{
                
                    gitCheckout(

                       branch: "main", 
                       url: "https://github.com/BalajNaidu-7013/devops_java_app.git"
                    )
                    
                }
            }

            stage('unit test maven'){

            when { expression {  params.action == 'create' } }

            steps{

                script {
                   mvnTest()
                    
                }
            }
        }
        
            stage('Integration test maven'){

            when { expression {  params.action == 'create' } }

            steps{

                script {
                   mvnIntegrationTest()
                    
                }
            }
        }
          stage('Maven Build : maven'){
         when { expression {  params.action == 'create' } }
            steps{
               script{
                   
                   mvnBuild()
               }
            }
        }
        
    }
}