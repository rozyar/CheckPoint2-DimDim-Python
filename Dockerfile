# Usar a imagem base Python 3.9-slim
FROM python:3.9-slim

# Definir o diretório de trabalho no container
WORKDIR /app

# Argumento para receber o nome da aplicação no build
ARG APP_NAME

# Copiar o arquivo Python para o diretório de trabalho
COPY ${APP_NAME}.py .

# Variável de ambiente para executar no CMD
ENV APP_NAME=${APP_NAME}

# Comando para executar a aplicação
CMD python ${APP_NAME}.py
