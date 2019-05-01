pipeline{
	agent any
	stages{
		
		stage('Compile stage'){
			
			steps{
				withMaven(maven: 'maven_3_6_1'){
					sh 'mvn clean compile'
				}
			}
		}
	}
}