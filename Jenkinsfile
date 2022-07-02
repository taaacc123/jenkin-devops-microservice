pipeline 
{
	//agent { docker { image 'maven:3.6.3'} }
	//agent { docker { image 'girireddychinnu/hello-world-python:0.0.4.RELEASE'}}
	agent any
	environment {
		dockerHome = tool 'myDocker'
		mavenHome = tool 'myMaven'
		PATH = "$dockerHome/bin:$mavenHome/bin:$PATH"
		//add docker bin anf maven bin to path
	}
	stages {
		stage('Build') {
			steps {
				sh 'mvn --version'
				sh 'docker --version'
               	echo "Build"
				echo "$PATH"
				echo "BUILD_NUMBER - $env.BUILD_NUMBER"
				echo "BUILD_ID - $env.BUILD_ID"
				echo "JOB_NAME - $env.JOB_NAME"
				echo "BUILD_TAG - $env.BUILD_TAG"
				echo "BUILD_URL - $env.BUILD_URL"
				
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
	

