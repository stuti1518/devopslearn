FROM openjdk:8
#FROM openjdk:8u292-slim-buster


WORKDIR /app


#COPY agentTestingApp.war /app
COPY beta-nsecom-0.0.1-SNAPSHOT.jar /app


# Expose ports
EXPOSE 12350
#EXPOSE 7894

#RUN mkdir -p /home/cavisson/netdiagnostics
#ADD netdiagnostics.4.13.0.12.tar.gz /home/cavisson/netdiagnostics


# Set the entrypoint
ENTRYPOINT [ "java", "-jar" ,"-Dserver.port=12350", "beta-nsecom-0.0.1-SNAPSHOT.jar"]
#ENTRYPOINT [ "java", "-jar", "-javaagent:/home/cavisson/netdiagnostics/java/lib/ndmain.jar=time,ndAgentJar=/home/cavisson/netdiagnostics/java/lib/ndagent-with-dep.jar,ndHome=/home/cavisson/netdiagnostics" ,"-Dserver.port=80", "agentTestingApp.war"]
#ENTRYPOINT [ "java", "-jar", "-javaagent:/app/netd/lib/ndmain.jar=time,ndAgentJar=/app/netd/lib/ndagent-with-dep.jar,ndHome=/app/netd" ,"-Dserver.port=80", "beta-nsecom-0.0.1-SNAPSHOT.jar"]
