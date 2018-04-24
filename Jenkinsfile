pipeline {
    agent any

    def GIT_COMMIT_HASH = sh (script: "git log -n 1 --pretty=format:'%H'", returnStdout: true)
    GIT_COMMIT_HASH_ABBREV = GIT_COMMIT_HASH.substring(5)

    echo "GIT_COMMIT_HASH: ${GIT_COMMIT_HASH}"
    echo "GIT_COMMIT_HASH_ABBREV: ${GIT_COMMIT_HASH_ABBREV}"

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                ./build.sh ${GIT_COMMIT_HASH_ABBREV}
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
