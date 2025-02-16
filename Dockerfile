# Usa a imagem base do JDK 17
FROM openjdk:17-jdk-slim

# Define o diretório de trabalho
WORKDIR /app

# Copia o JAR gerado pelo build do Gradle
COPY build/libs/app.jar app.jar

# Exposição da porta do serviço
EXPOSE 8080

# Comando de execução da aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]
