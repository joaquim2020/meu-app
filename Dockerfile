# Usar uma imagem base
FROM node:14

# Definir o diretório de trabalho
WORKDIR /app

# Copiar o arquivo package.json para o diretório de trabalho
COPY package*.json ./

# Instalar dependências
RUN npm install

# Copiar o código fonte
COPY . .

# Expor a porta que a aplicação irá usar
EXPOSE 8080

# Definir o comando para iniciar a aplicação
CMD ["node", "app.js"]
