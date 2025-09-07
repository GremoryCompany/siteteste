# Use a imagem do Nginx como base
FROM nginx:alpine

# Copie os arquivos do site para o diretório padrão do Nginx
COPY . /usr/share/nginx/html

# Expõe a porta 80
EXPOSE 80

# Comando para rodar o Nginx em modo foreground
CMD ["nginx", "-g", "daemon off;"]
