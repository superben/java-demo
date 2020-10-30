#!/bin/sh -e

echo "The application will start in ${APP_SLEEP}s..." && sleep ${APP_SLEEP}
exec ${JAVA_HOME}/bin/java ${JAVA_OPTS} -XX:InitialRAMPercentage=40.0 -XX:MaxRAMPercentage=80.0 -XX:MinRAMPercentage=50.0 \
     -Djava.security.egd=file:/dev/./urandom \
     -jar /root/app/app.jar ${RUN_ARGS} "$@"