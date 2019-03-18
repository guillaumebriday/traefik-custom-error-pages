[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.me/guillaumebriday)

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
