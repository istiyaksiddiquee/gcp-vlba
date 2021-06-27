FROM nginx:latest

# Conf files
COPY server.conf /etc/nginx/conf.d/

# Delete default files
RUN rm /etc/nginx/conf.d/default.conf 

WORKDIR /home/code

COPY . .

# Expose 8069 port, in which the users will interact with odoo services
EXPOSE 80