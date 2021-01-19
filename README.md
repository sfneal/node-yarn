# stephenneal/node-yarn

[![Build Status](https://travis-ci.com/sfneal/node-yarn.svg?branch=master&style=flat-square)](https://travis-ci.com/sfneal/node-yarn)
[![Total Downloads](https://img.shields.io/docker/pulls/stephenneal/node-yarn?style=flat-square)](https://hub.docker.com/r/stephenneal/node-yarn)
[![Latest Version](https://img.shields.io/docker/v/stephenneal/node-yarn?sort=semver&style=flat-square)](https://hub.docker.com/r/stephenneal/node-yarn)

node-yarn is an alpine based Docker image with npm & yarn installed.  Useful for separating front-end dependency installation from back-end dependency installation in a multi-step Docker file build.

## Installation

Docker images can be pulled using the Docker CLI.

```bash
docker pull stephenneal/node-yarn:v2
```

## Usage

Here's an example of a yarn dependency installation portion of a Laravel Application's Dockerfile.  node dependencies are installed via the `RUN yarn install` step and then the webpacks are built and compressed in the `RUN yarn run ${yarn_env}` step.

```dockerfile
# NodeJS package installer
FROM stephenneal/node-yarn:v2 AS node

# Yarn install environment ('production' or 'development')
ARG yarn_env="production"

# Copy npm package files
COPY ["package.json", "yarn.lock", "/var/www/"]

# Install node_modules
RUN yarn install

# Copy webpack files
COPY ["webpack.mix.js", "/var/www/"]
COPY webpacks /var/www/webpacks/

# Compile webpack assets
RUN yarn run ${yarn_env}

# Remove node_modules directory
RUN rm -r /var/www/node_modules
```

## Contributing

Please see [CONTRIBUTING](CONTRIBUTING.md) for details.

### Security

If you discover any security related issues, please email stephen.neal14@gmail.com instead of using the issue tracker.

## Credits

- [Stephen Neal](https://github.com/sfneal)
- [All Contributors](../../contributors)

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.
