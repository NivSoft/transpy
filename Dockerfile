FROM nginx:latest
MAINTAINER Danilo Rodrigues <danilorodrigues@nivsoft.com.br>

#Atualiza e instala dependências
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install git vim python3 python virtualenv build-essential python3-dev python python-pip python3-pip apt-utils -y
RUN apt-get update
RUN apt-get upgrade -y

#Cria diretórios
RUN mkdir /deploy
RUN mkdir /deploy/app
RUN mkdir /deploy/envs

#Clona repositório do sistema e instala requirements.txt
RUN git clone https://github.com/NivSoft/transpy.git /deploy/app
RUN pip3 install -r /deploy/app/requirements.txt

#Substituição do arquivo default.conf do nginx
RUN mv /deploy/app/default.conf /etc/nginx/conf.d