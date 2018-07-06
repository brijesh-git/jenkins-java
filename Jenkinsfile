pipeline {
	
	agent none 

	stages {

		stage('build'){
		 	steps {
				sh 'ant -f build.xml -v'
			}

		}
		stage('junit-testing'){
		 	steps {
				sh 'ant -f build.xml -v'
				junit 'reports/result.xml'
			}

		}		
	   stage("Test on Debian") {
	      agent {
	        docker 'openjdk:8u121-jre'
	      }
	      steps {
	        sh "java -jar dist/rectangle_${env.MAJOR_VERSION}.${env.BUILD_NUMBER}.jar 3 4"
	      }
	    }
	

	}	

}

