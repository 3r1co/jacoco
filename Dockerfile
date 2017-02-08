FROM tomee:7-jre-1.7.4-webprofile

COPY target/jacoco-example.war /usr/local/tomee/webapps/

