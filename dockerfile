# Comando para rodar o Nginx em modo foreground
CMD ["nginx", "-g", "daemon off;"]
FROM nginx:alpine
COPY . /usr/share/nginx/html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
