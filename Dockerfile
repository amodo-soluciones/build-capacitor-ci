# Usa Node.js como base (versión 18-alpine)
FROM node:18-alpine

# Crea un directorio de trabajo
WORKDIR /app

# Copia los archivos necesarios al contenedor
COPY . .

# Instala dependencias del proyecto
RUN npm install

# Sincroniza Capacitor
RUN npx cap sync

# Mantén el contenedor listo para ejecutar comandos
CMD ["sh"]
