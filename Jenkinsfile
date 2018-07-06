pipeline {
	
	agent any 

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

	}

}

