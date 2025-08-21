# Imagen base de Node
FROM node:18

# Carpeta de trabajo dentro del contenedor
WORKDIR /app

# Copiar package.json e instalar dependencias
COPY package*.json ./
RUN npm install

# Copiar el resto de archivos
COPY . .

# Puerto que usará la app
EXPOSE 3000

# Comando para iniciar la app
CMD ["node", "app.js"]
