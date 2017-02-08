FROM tomee:7-jre-1.7.4-plus

RUN rm -rf /usr/local/tomee/webapps/ROOT/*

COPY target/jacoco-example.war /usr/local/tomee/webapps/

