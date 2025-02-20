# Usa la imagen oficial de NGINX
FROM nginx:latest

# Copiar los certificados SSL
COPY certs/postcareun.io.crt /etc/ssl/certs/
COPY certs/postcareun.io.key /etc/ssl/private/

# Copiar la configuración de NGINX
COPY etc/nginx/nginx.conf /etc/nginx/nginx.conf
COPY etc/nginx/api_conf.d/ /etc/nginx/conf.d/

# Expone el puerto 80 para HTTP y 443 para HTTPS
EXPOSE 8080 

# Inicia NGINX en modo foreground
CMD ["nginx", "-g", "daemon off;"]
