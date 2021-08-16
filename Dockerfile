# jekyll
FROM jekyll/builder:latest as jekyll
WORKDIR /tmp
COPY . /tmp
RUN chown -R jekyll:jekyll /tmp
RUN gem install bundler
RUN jekyll build

# nginx
FROM nginx:alpine as nginx

COPY .cloud/nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=jekyll /tmp/_site/ /var/www/public/
