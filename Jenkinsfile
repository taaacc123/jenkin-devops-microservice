pipeline 
{
	//agent { docker { image 'maven:3.6.3'} }
	//agent { docker { image 'hello-world-python:0.0.4.RELEASE'}}
	//agent { dockerfile true }
	agent any
	environment {
		DOCKERHUB_CREDENTIALS=credentials('docker-creds')
	}
	stages {
		
		stage('Build') {
			steps {
				//sh 'python --version'
               	echo "Build"
				sh 'docker build -t girireddychinnu/hello-world-python:0.0.4.RELEASE .'
			}
		}
		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push girireddychinnu/hello-world-python:0.0.4.RELEASE'
			}
		}
		stage('Run') {

			steps {
				echo "run"
				sh 'docker run -p 5000:5000 girireddychinnu/hello-world-python:0.0.4.RELEASE'
			}
		}
}
post {
		always {
			sh 'docker logout'
		}
	}
}
	

