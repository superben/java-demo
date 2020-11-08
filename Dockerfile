FROM openjdk:8-alpine

LABEL description="your description"
ENV SPRING_OUTPUT_ANSI_ENABLED=ALWAYS \
    APP_SLEEP=0 \
    JAVA_OPTS="" \
    RUN_ARGS="" 
#    TZ="Asia/Shanghai"
    
#RUN apk add --no-cache tzdata

RUN mkdir -p /root/app/

WORKDIR /root/app/
COPY entrypoint.sh \
     target/app.jar \
     /root/app/

RUN chmod 755 entrypoint.sh 

ENTRYPOINT ["./entrypoint.sh"]
EXPOSE 8080
