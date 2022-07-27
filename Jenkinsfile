node {
   def mvnHome
   stage('Prepare') {
      git url: 'https://github.com/kesavkummari/javawebapp.git', branch: 'main'
      mvnHome = tool 'maven'
    }

    stage('Clean'){
       sh '${mvnHome}/bin/mvn -Dmaven.test.failure.ignore clean'
    }
    stage('Validate'){
        sh '${mvnHome}/bin/mvn -Dmaven.test.failure.ignore validate'
    }
    stage('Compile'){
        sh '${mvnHome}/bin/mvn -Dmaven.test.failure.ignore compile'
    }
    stage('Test'){
        sh '${mvnHome}/bin/mvn -Dmaven.test.failure.ignore test -DskipTests'
    }
    stage('Package'){
        sh '${mvnHome}/bin/mvn -Dmaven.test.failure.ignore package -DskipTests'
    }
    stage('Verfiy'){
        sh '${mvnHome}/bin/mvn -Dmaven.test.failure.ignore verify -DskipTests'
    }
    stage('Install'){
        sh '${mvnHome}/bin/mvn -Dmaven.test.failure.ignore install -DskipTests'
    }
}
