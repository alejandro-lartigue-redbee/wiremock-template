# Usa una imagen base de Java
FROM openjdk:12-jdk-alpine

# Establece el directorio de trabajo en /app
WORKDIR /app

# Descarga WireMock JAR versión 3.3.1
RUN wget -O wiremock.jar https://repo1.maven.org/maven2/org/wiremock/wiremock-standalone/3.3.1/wiremock-standalone-3.3.1.jar

COPY __files /app/__files
COPY mappings /app/mappings

# Expone el puerto 8080 (puedes cambiarlo según tus necesidades)
EXPOSE 8080

# Comando para ejecutar WireMock al iniciar el contenedor
ENTRYPOINT ["java", "-jar", "wiremock.jar"]


