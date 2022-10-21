# Download Base Image from hub.docker.com
FROM ubuntu

# Execute Commands
RUN apt-get update 

# Environment Variables
ENV TZ=Asia/Kolkata 

# Link Environment Variabale unto File 
# RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime  

# Update Environment Variable unto File 
RUN echo $TZ > /etc/timezone 

# Download, Install & Configure WebSever i.e. Apache - Apache2 
RUN apt-get install apache2 -y 

# Utils Package 
RUN apt-get install apache2-utils -y 

# Cleanup APT Command 
RUN apt-get clean 

# Enable WebServer Port i.e. HTTP 80/TCP
EXPOSE 80

# Execute WebServer
CMD ["apache2ctl","-D","FOREGROUND"]
