# Use uma imagem base do Node.js
FROM node:16

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia os arquivos do projeto para o contêiner
COPY package.json package-lock.json ./

# Instala as dependências do projeto
RUN npm install

# Copia o restante dos arquivos do projeto
COPY . .

# Expõe a porta que o Browser Use vai usar
EXPOSE 3000

# Comando para iniciar o Browser Use
CMD ["npm", "start"]
