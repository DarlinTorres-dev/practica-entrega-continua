# Imagen base
FROM node:18

# Carpeta de trabajo dentro del contenedor
WORKDIR /app

# Copiar package.json primero (mejor cache)
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código
COPY . .

# Exponer puerto
EXPOSE 3000

# Comando de inicio
CMD ["npm", "start"]