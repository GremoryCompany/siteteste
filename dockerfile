# Imagem base leve com Nginx
FROM nginx:alpine

# Remove configuração padrão
RUN rm -rf /usr/share/nginx/html/*

# Copia os arquivos do seu site para a pasta do Nginx
COPY . /usr/share/nginx/html

# Copia config customizada do Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expõe a porta 80 para a web
EXPOSE 80

# Comando para rodar o Nginx
CMD ["nginx", "-g", "daemon off;"]
