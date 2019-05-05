pipeline{
	environment{
		registry="venkatkedar/discovery-server"
		registryCredential='572e2bcf-0443-416b-815f-94e6bd66cb5b'
	}
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
				
				
				docker.withRegistry('https://hub.docker.com/', 'registryCredential') {

                    def customImage = docker.build("venkatkedar/discovery-server:latest")
                    customImage.push()
                }
			}
		}
	}
}