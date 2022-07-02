pipeline 
{
	//agent { docker { image 'maven:3.6.3'} }
	//agent { docker { image 'girireddychinnu/hello-world-python:0.0.4.RELEASE'}}
	agent { dockerfile true }
	stages {
		stage('Build') {
			steps {
				//sh 'mvn --version'
               	echo "Build1"
				sh 'docker build -t hello-world-python:0.0.5.RELEASE .'
			}
		}
		stage('Run') {
			steps {
				sh 'python --version'
               	echo "Run"
				sh 'docker run --rm hello-world-python:0.0.5.RELEASE'
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
	

