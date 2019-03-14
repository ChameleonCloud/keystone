pipeline {
  agent any
 
  options {
    copyArtifactPermission(projectNames: 'keystone*')
  }

  stages {
    stage('package') {
      steps {
        dir('dist') {
          deleteDir()
        }
        sh 'python setup.py sdist'
        sh 'find dist -type f -exec cp {} dist/keystone.tar.gz \\;'
        archiveArtifacts(artifacts: 'dist/keystone.tar.gz', onlyIfSuccessful: true)
      }
    }
  }
}

