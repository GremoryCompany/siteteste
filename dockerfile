# Usa nginx leve
FROM nginx:alpine

# Remove html padrão
RUN rm -rf /usr/share/nginx/html/*

# Copia seus arquivos do site (HTML, CSS, imagens, mp3, gif)
COPY . /usr/share/nginx/html

# Expõe a porta 80
EXPOSE 80

# Roda nginx
CMD ["nginx", "-g", "daemon off;"]
