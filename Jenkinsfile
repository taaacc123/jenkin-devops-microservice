pipeline 
{
	//agent { docker { image 'maven:3.6.3'} }
	agent { dockerfile true }
	//{ image 'girireddychinnu/hello-world-python:0.0.4.RELEASE'}}
	stages {
		stage('Build') {
			steps {
				//sh 'mvn --version'
               	echo "Build"
			}
		}
		stage('Test') {
			steps {
				echo "Test"
			}
		}
		stage('Integration Test') {
			steps {
				echo "Integration Test"
			}
		}
	} 
	post {
		always {
			echo "im always"
		}
		success {
			echo "im success"
		}
		failure {
			echo "im failed"
		}
	}
}
	

