pipeline 
{
	//agent { docker { image 'maven:3.6.3'} }
	agent any
	//{ image 'girireddychinnu/hello-world-python:0.0.4.RELEASE'}}
	stages {
		stage('Back-end') {
            agent {
                docker { image 'girireddychinnu/hello-world-python:0.0.4.RELEASE' }
            }
            steps {
                sh 'docker --version'
				sh 'docker run -d -p 5000:5000 girireddychinnu/hello-world-python:0.0.4.RELEASE'
            }
        }
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
	

