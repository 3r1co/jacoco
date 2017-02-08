# Code Coverage with TomEE, JaCoCo and SonarQube

In this little example I present you how to easily run code coverage analysis for integration tests.

## How To Run

1. Download the Jacoco Agent from [here](http://search.maven.org/remotecontent?filepath=org/jacoco/jacoco/0.7.9/jacoco-0.7.9.zip).
2. Place it in the root of the repository (as it is linked in the docker-compose.yml)
3. Start the docker-compose stack.
   ```
   docker-compose up -d
   ```
4. Access the sample application under http://localhost:8888. Do some math calculations to see the analysis work.
5. Connect to the maven container and change to /app:
    ```
    docker exec -it jacoco_maven_1 bash
    bash-4.3# cd /app
    ```
6. Fetch the JaCoCo Dump:
    ```
    mvn jacoco:dump -Djacoco.address=app
    ```
7. Run the SonarQube Analysis:
    ```
    mvn sonar:sonar -Dsonar.host.url=http://sonar:9000
    ```
8. Access the SonarQube Analysis under http://localhost:9000 and see the coverage report.
