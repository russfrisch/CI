FROM nginx:alpine

COPY sites-available/ /etc/nginx/sites-available/

RUN apk add --no-cache certbot py-pip && \
    pip install certbot-nginx && \
    certbot certonly --noninteractive --nginx --agree-tos --email="russ.frisch@gmail.com" -d "triphoenixlabs.com" && \
    certbot certonly --noninteractive --nginx --agree-tos --email="russ.frisch@gmail.com" -d "ci.triphoenixlabs.com" && \
    certbot certonly --noninteractive --nginx --agree-tos --email="russ.frisch@gmail.com" -d "docker.triphoenixlabs.com" && \
    certbot certonly --noninteractive --nginx --agree-tos --email="russ.frisch@gmail.com" -d "manage.triphoenixlabs.com" && \
    certbot certonly --noninteractive --nginx --agree-tos --email="russ.frisch@gmail.com" -d "todos.triphoenixlabs.com"

