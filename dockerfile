# a partir da versão
FROM node:14
# MAINTAINER Erick Fernandes

# ENV NODE_ENV=development

# copia todo o conteúdo do nosso diretório atual, ou seja, o '.' vai
# representar todo meu conteúdo que está dentro do meu repositório, e o
# /app-node é o diretório da minha imagem que vai receber todo meu conteúdo.
# COPY . /app-node

# O segundo "." vai para a pasta de diretório de trabalho padrão que é o
# workdir /app-node.
COPY . .

# Define um diretório de trabalho padrão
WORKDIR /app-node

# Executa um comando
RUN npm install 

# ponto de entrado, ou seja, ponto de entrada do nosso container
ENTRYPOINT ["npm", "start"]
# EXPOSE 3000

# para buildar o meu container digite a linha de comando a seguir:
# docker build -t <nomeDaConta>/<nomeDoAPP> .