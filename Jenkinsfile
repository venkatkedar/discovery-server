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
				withDockerServer(docker: 'myDocker')
				{
					sh 'docker build -t registry+":latest"'
					sh 'docker push registry+":latest"'
				}
			}
		}
	}
}