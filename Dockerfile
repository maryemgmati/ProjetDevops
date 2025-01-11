# Utiliser l'image officielle Node.js
FROM node:16

# Créer le répertoire de travail
WORKDIR /app

# Copier les fichiers de dépendances
COPY app/package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste de l'application
COPY app/ .

# Exposer le port de l'application
EXPOSE 3000

# Lancer l'application
CMD ["npm", "start"]
