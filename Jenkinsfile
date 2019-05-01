pipeline{
	agent any
	stages{
		
		stage('Package stage'){
			
			steps{
				withMaven(maven: 'maven_3_6_1'){
					sh 'mvn clean package'
				}
			}
		}
		stage('Build image'){
			
			steps{
				script{
					def customImage=docker.build("my-image:${env.BUILD_ID}")
					customImage.push()
				}
			}
		}
	}
}