# Obraz bazowy z Node.js
FROM node:18.15.0-alpine

# Utwórz katalog dla aplikacji
WORKDIR /app

# Skopiuj pliki projektu do katalogu /app
COPY . .

# Zainstaluj zależności
RUN npm install

# Kompiluj apkiację
RUN npm run build

# Uruchom aplikację w środowisku produkcyjnym
CMD ["npm", "start", "--", "--host", "0.0.0.0", "--port", "8081"]
