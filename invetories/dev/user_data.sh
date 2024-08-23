#!/bin/bash

# Atualizar pacotes e instalar o Nginx
sudo apt-get update -y
sudo apt-get install -y nginx

# Criar o diretório para o conteúdo do Nginx
sudo mkdir -p /var/www/html

# Criar o arquivo HTML personalizado
sudo tee /var/www/html/index.html > /dev/null <<EOL
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NGINX Custom Page</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #2c3e50;
            font-family: 'Arial', sans-serif;
        }
        h1 {
            color: #ecf0f1;
            font-size: 5em;
            font-weight: bold;
            text-transform: uppercase;
            text-align: center;
            text-shadow: 3px 3px 5px rgba(0, 0, 0, 0.5);
        }
        h1::before {
            content: "💪 ";
        }
        h1::after {
            content: " 💥";
        }
    </style>
</head>
<body>
    <h1>Ricky Macho Man!</h1>
</body>
</html>
EOL

# Iniciar e habilitar o Nginx
sudo systemctl start nginx
sudo systemctl enable nginx
