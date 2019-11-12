# Spring boot minimal base docker image

Uses jlink and distroless base `gcr.io/distroless/base` to build minimal base jre 11 image for spring boot 2 applications

## Build

`docker build . -t pragmasoft/spring-boot-jre:amazoncorretto-11`

## Run

`docker run -it pragmasoft/spring-boot-jre:amazoncorretto-11 -version`

## Push

`docker push pragmasoft/spring-boot-jre:amazoncorretto-11`