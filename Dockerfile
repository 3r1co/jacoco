FROM dockerhub.gemalto.com/gemalto/alpine.java.tomee:7.0.2-alpine-3.5

USER trent
COPY target/jacoco-example ${CATALINA_WEBAPPS}/ROOT/

USER bob