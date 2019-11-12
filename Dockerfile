FROM amazoncorretto:11
RUN jlink --no-header-files --no-man-pages --compress=2 --strip-debug --add-modules java.base,java.logging,java.xml,jdk.unsupported,java.sql,java.naming,java.management,java.instrument,java.desktop,java.security.jgss --output /jre

FROM gcr.io/distroless/base
COPY --from=0 /jre /jre
ENTRYPOINT [ "/jre/bin/java" ]
