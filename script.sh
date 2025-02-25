#!/bin/bash
#Autora: Vitória Gomes
#Descrição: Desafio shell script

# Registrar todos os passos em um arquivo de log
LOG_FILE="/var/log/script.log"
exec > >(tee -a "$LOG_FILE") 2>&1

echo "Iniciando a execução do script..."

# Atualizar o sistema
echo "Atualizando o sistema..."
sudo yum update -y || sudo apt-get update -y

# Instalar o Git
echo "Instalando o Git..."
sudo yum install git -y || sudo apt-get install git -y

# Instalar o Apache (web server)
echo "Instalando o Apache..."
sudo yum install httpd -y || sudo apt-get install apache2 -y

# Iniciar e habilitar o Apache
echo "Iniciando o Apache..."
sudo systemctl start httpd || sudo systemctl start apache2
sudo systemctl enable httpd || sudo systemctl enable apache2

# Clonar o repositório do GitHub
echo "Clonando o repositório do GitHub..."
sudo git clone https://github.com/Breno-Martins-Simao/PureLandingPage-Html-Css-Js.git /var/www/html/

# Configurar permissões para o diretório do Apache
echo "Configurando permissões..."
sudo chown -R apache:apache /var/www/html/ || sudo chown -R www-data:www-data /var/www/html/
sudo chmod -R 755 /var/www/html/

# Reiniciar o Apache para aplicar as mudanças
echo "Reiniciando o Apache..."
sudo systemctl restart httpd || sudo systemctl restart apache2

# Enviar a solicitação POST com o seu nome
echo "Enviando solicitação POST..."
curl -X POST -d "nome=Vitória Gomes" https://difusaotech.com.br/lab/aws/index.php

echo "Script concluído com sucesso!"
