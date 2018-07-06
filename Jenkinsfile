pipeline {
	
	agent none 

	stages {
		
	   stage("Test on Debian") {
	      agent {
	        docker 'openjdk:8u121-jre'
	      }
	      steps {
	      	sh 'ant -f build.xml -v'
	        sh "java -jar dist/rectangle_${env.MAJOR_VERSION}.${env.BUILD_NUMBER}.jar 3 4"
	      }
	    }
	

	}	

}

