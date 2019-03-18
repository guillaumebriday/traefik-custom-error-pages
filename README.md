[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.me/guillaumebriday)
[![Docker Automated build](https://img.shields.io/docker/automated/guillaumebriday/traefik-custom-error-pages.svg)](https://hub.docker.com/r/guillaumebriday/traefik-custom-error-pages/)
[![Docker Pulls](https://img.shields.io/docker/pulls/guillaumebriday/traefik-custom-error-pages.svg)](https://hub.docker.com/r/guillaumebriday/traefik-custom-error-pages/)
[![Docker Stars](https://img.shields.io/docker/stars/guillaumebriday/traefik-custom-error-pages.svg)](https://hub.docker.com/r/guillaumebriday/traefik-custom-error-pages/)
[![Netlify Status](https://api.netlify.com/api/v1/badges/64de9cea-fa16-4f76-b5b8-a1abb5eb4e2f/deploy-status)](https://app.netlify.com/sites/traefik-custom-error-pages/deploys)

# Custom error pages for Traefik

A bunch of custom error pages for Traefik built with [Jekyll](https://jekyllrb.com/).

## Installation

```bash
$ bundle install
```

## Development

The current folder will be generated into ./_site :
```bash
$ jekyll build
```

Build the site on the preview server :
```bash
$ jekyll serve
$ open http://127.0.0.1:4000/
```

## Production

You can use this project in production with Netlify:

[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/guillaumebriday/traefik-custom-error-pages)

## How to use with Traefik and Docker

Labels are already define in the image to work with Traefik.

To use it in production just run the container :

```bash
$ docker run --rm -d guillaumebriday/traefik-custom-error-pages
```

## Credits

I used the [Laravel](https://laravel.com/) default HTTP error pages.

## Contributing

Do not hesitate to contribute to the project by adapting or adding features ! Bug reports or pull requests are welcome.

## License

This project is released under the [MIT](http://opensource.org/licenses/MIT) license.
