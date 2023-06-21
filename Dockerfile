# Usa una imagen base de Java
FROM openjdk:8-jdk-alpine

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia los archivos necesarios al contenedor
COPY wiremock.jar /app/wiremock.jar
COPY __files /app/__files
COPY mappings /app/mappings

# Expone el puerto 8080 (puedes cambiarlo según tus necesidades)
EXPOSE 8080

# Comando para ejecutar WireMock al iniciar el contenedor
ENTRYPOINT ["java", "-jar", "wiremock.jar"]


