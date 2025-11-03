# Étape 1: Build Flutter Web
FROM ghcr.io/cirruslabs/flutter:stable AS build

WORKDIR /app

# Copier les fichiers de dépendances
COPY pubspec.* ./
RUN flutter pub get

# Copier le code source
COPY . .

# Build web
RUN flutter build web --release

# Étape 2: Serveur Nginx
FROM nginx:alpine

# Copier le build vers nginx
COPY --from=build /app/build/web /usr/share/nginx/html

# Exposer le port
EXPOSE 80

# Démarrer nginx
CMD ["nginx", "-g", "daemon off;"]