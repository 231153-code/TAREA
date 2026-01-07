FROM openjdk:17-jdk-slim
COPY . /app
WORKDIR /app
CMD java -cp ./*:lib/* org.h2.tools.Server -web -webAllowOthers -tcp -tcpAllowOthers -ifNotExists
