FROM nginx:1.13.3-alpine

COPY nginx.conf /etc/nginx/nginx.conf
RUN mkdir /www
COPY ./dist /www
COPY ./src/favicon.ico /www
COPY ./setup.sh /setup.sh

RUN chmod ugo+x /setup.sh

CMD sh /setup.sh &&  nginx -g 'daemon off;'
