[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.me/guillaumebriday)
[![Docker Pulls](https://img.shields.io/docker/pulls/guillaumebriday/traefik-custom-error-pages.svg)](https://hub.docker.com/r/guillaumebriday/traefik-custom-error-pages/)
[![Docker Stars](https://img.shields.io/docker/stars/guillaumebriday/traefik-custom-error-pages.svg)](https://hub.docker.com/r/guillaumebriday/traefik-custom-error-pages/)
[![Netlify Status](https://api.netlify.com/api/v1/badges/64de9cea-fa16-4f76-b5b8-a1abb5eb4e2f/deploy-status)](https://app.netlify.com/sites/traefik-custom-error-pages/deploys)

# Custom error pages for Traefik

A bunch of custom error pages for Traefik built with [Jekyll](https://jekyllrb.com/).

## Installation

Install dependencies
```bash
$ bundle install
```

If you want to build the project on your host:
```bash
$ jekyll build
```

If you want to preview the pages before building the Docker image :
```bash
$ jekyll serve
$ open http://127.0.0.1:4000/
```

## How to use with Traefik and Docker

Labels are already define in the image to work with Traefik.

To use it in production just run the container :

```bash
$ docker run -d --restart always guillaumebriday/traefik-custom-error-pages
```

## Build the image

This is a [multi-stage build](https://docs.docker.com/develop/develop-images/multistage-build/), to build the final image:
```bash
$ docker build -f .cloud/docker/Dockerfile -t traefik-custom-error-pages .
```

## How it works?

As you can see in the Dockerfile, I use [Nginx](https://www.nginx.com/) as Web server to serve static files. To generate this pages, I use [Jekyll](https://jekyllrb.com/) in the first step of the build.

For traefik, I hardcoded [Labels](https://docs.traefik.io/user-guide/docker-and-lets-encrypt/#labels) in the Dockerfile.

You will find in this article [https://www.techjunktrunk.com/docker/2017/11/03/traefik-default-server-catch-all](https://www.techjunktrunk.com/docker/2017/11/03/traefik-default-server-catch-all/) why I set up `priority` and `rule` this way.

```ini
LABEL traefik.frontend.priority="1"
LABEL traefik.frontend.rule="HostRegexp:{catchall:.*}"
```

It's very useful because this container will respond to all requests only if there is no container with a real rule.

## Credits

I used the [Laravel](https://laravel.com/) default HTTP error pages.

## Contributing

Do not hesitate to contribute to the project by adapting or adding features ! Bug reports or pull requests are welcome.

## License

This project is released under the [MIT](http://opensource.org/licenses/MIT) license.
