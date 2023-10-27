FROM mariadb:lts

EXPOSE 3306


#RÓTULOS DA IMAGEM
LABEL version="1.0"
LABEL maintainer="LUCAS"
LABEL description="MariaDB Server"

#Criando o diretório /data para armazenamento dos dados
RUN mkdir data && cd /data

#Passagem do volume da imagem
VOLUME /data


#VARIAVEIS DE AMBIENTE

#Criação de uma senha aleatória para root
ENV MARIADB_ROOT_PASSWORD=5e25567b3faa7b2831db9f7dafa46aed

#Criação do banco de dados orchestrator
ENV MARIADB_DATABASE=teste

#Criação do usuário do banco
ENV MARIADB_USER=teste_user

#Criação da senha do usuário criado
ENV MARIADB_PASSWORD=80e8a78a03ce548218167a5521b4d237

CMD ["mariadbd"]