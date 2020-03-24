FROM openjdk:8-alpine

RUN mkdir /papermc

WORKDIR /papermc

RUN apk add --update curl \
    && rm -rf /var/cache/apk/* \
    && curl https://papermc.io/api/v1/paper/1.15.2/latest/download -o paperclip.jar \
    && echo "eula=true" > eula.txt \
    && chmod 700 paperclip.jar

EXPOSE 25565

CMD java -Xms4G -Xmx4G -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=100 -XX:+DisableExplicitGC -XX:TargetSurvivorRatio=90 -XX:G1NewSizePercent=50 -XX:G1MaxNewSizePercent=80 -XX:G1MixedGCLiveThresholdPercent=35 -XX:+AlwaysPreTouch -XX:+ParallelRefProcEnabled -Dusing.aikars.flags=mcflags.emc.gs -jar paperclip.jar
