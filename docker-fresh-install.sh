#!/bin/bash

# Atualização do sistema
sudo apt update
echo "..... "
echo "..... "
echo "..... "
echo "Atualizando o sistema"
sleep 2
sudo apt upgrade -y

#componentes de usabilidade, python e dev em geral
echo "..... "
echo "..... "
echo "..... "
echo "Instalando componentes de usabilidade e desenvolvimento"
sleep 2
sudo apt install -y python-dev python3-dev python-pip python-virtualenv git tig wget curl

#Instalando componentes do docker
echo "..... "
echo "..... "
echo "..... "
echo "Instalando componentes necessários para o docker"
sleep 2
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

echo "..... "
echo "..... "
echo "..... "
echo "Add Docker’s official GPG key: "
sleep 2
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

echo "..... "
echo "..... "
echo "..... "
echo "Instalando Docker..."
sleep 2
sudo apt update
sudo apt install docker-ce

echo "..... "
echo "..... "
echo "..... "
echo "Adicionando usuário ao grupo DOCKER..."
sleep 2
sudo usermod -a -G docker $USER

echo "..... "
echo "..... "
echo "..... "
echo "Instalando docker compose..."
sleep 2
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo "..... "
echo "..... "
echo "..... "
echo "Versão do docker-compose:"
docker-compose --version

