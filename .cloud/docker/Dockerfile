# jekyll
FROM jekyll/builder:latest as jekyll
WORKDIR /tmp
COPY . /tmp

RUN jekyll build

# nginx
FROM nginx:alpine as nginx

LABEL traefik.enable="true"
LABEL traefik.port="80"
LABEL traefik.frontend.priority="1"
LABEL traefik.frontend.rule="HostRegexp:{catchall:.*}"

COPY .cloud/nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=jekyll /tmp/_site/ /var/www/public/
