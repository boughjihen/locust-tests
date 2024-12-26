git config --global user.name "boughjihen"
git config --global user.email "boughjihen2@gmail.com"
git config --list
mkdir locust-tests
cd locust-tests
git init
nano locustfile.py
ls
[200~echo "
pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/boughjihen/locust-tests.git'
            }
        }
        stage('Run Tests') {
            steps {
                echo 'Running Locust tests...'
            }
        }
    }
}
" > Jenkinsfile
~
echo "
pipeline {
    agent any
    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/boughjihen/locust-tests.git'
            }
        }
        stage('Run Tests') {
            steps {
                echo 'Running Locust tests...'
            }
        }
    }
}
" > Jenkinsfile
ls
git add locustfile.py Jenkinsfile
git commit -m "Initial commit with locustfile and Jenkinsfile"
git remote add origin https://github.com/boughjihen/locust-tests.git
git push -u origin main
git remote add origin https://github.com/boughjihen/locust-tests.git⁩
git push -u origin main
git branch
git checkout -b main
git add .
git commit -m "Initial commit"
git push -u origin main
Username for 'https://github.com': boughjihen
Password for 'https://boughjihen@github.com': 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
python app.py
