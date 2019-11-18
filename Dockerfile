FROM amazoncorretto:11 AS jdk
RUN jlink --no-header-files --no-man-pages --compress=2 --strip-debug --add-modules java.base,java.logging,java.xml,jdk.unsupported,java.sql,java.naming,java.management,java.instrument,java.desktop,java.security.jgss,jdk.jcmd --output /jre
RUN cp /usr/lib/jvm/java/bin/jcmd /jre/bin/

FROM gcr.io/distroless/base
COPY --from=jdk /jre /jre

ENTRYPOINT [ "/jre/bin/java" ]
