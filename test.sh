mvn clean verify sonar:sonar \
  -Dsonar.projectKey=Testing-web-app \
  -Dsonar.host.url=http://sonarqube:9000 \
  -Dsonar.login=sqp_02d243e4f45b3ee962e80b27a3432041ec0043e1