#!/bin/sh

set -e

envsubst '${APP_ENV} ${APP_VERSION}' \
< /usr/share/nginx/html/index.html.template \
> /usr/share/nginx/html/index.html

exec nginx -g "daemon off;"
