FROM eclipse-temurin:17-jdk

WORKDIR /opt/Lavalink
COPY . .

RUN ./gradlew build --no-daemon

EXPOSE 2333

CMD ["java","-Dfile.encoding=UTF-8","-jar","LavalinkServer/build/libs/Lavalink.jar"]
