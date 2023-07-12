#Indica que este dockerfile se basa en la imagen de Docker llamada nginx, significa que el contenedort utilizará la última versión de la imagen.
FROM nginx:latest

#Esta línea copia el contenido del directorio local llamado proyecto para agregarlo al directorio predeterminado de la imagen, donde Nginx busca los archivos y los recursos para mostrarlos en la web.
COPY proyecto /usr/share/nginx/html/

#Indicamos que el contenedor se estará desplegando en el puerto 80. 
EXPOSE 80


CMD ["nginx", "-g", "daemon off;"]