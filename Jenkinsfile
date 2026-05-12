pipeline{
  agent any
  environment{
    DOCKERHUB_CREDENTIALS="dockerhub-credentials"
    APP_NAME="meghana1007/Flask-APP"
    stages{
      stage(checkout)
      {
        steps
        {
          checkout scm
        }
      }
      stage(Dcker Build Image)
      {
        steps
        {
          sh'sudo docker build -t my-python-app/latest'
        }
      }
      stage(Login and push)
      {
        steps
        {
          withcredentials([usernamePassword(credentialsid:${DockerhubCredentials} PasswordVarialbe:'pass',Usernamevariable:'user')])
          sh 'echo PASS docker login -u ${DOCKER USERNAME} --password-stdin'
          sh 'echo 
