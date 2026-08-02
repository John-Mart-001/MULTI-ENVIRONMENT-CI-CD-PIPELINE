envsubst \
'${APP_ENV} ${APP_VERSION}' \
< /usr/share/nginx/html/index.html.template \
> /usr/share/nginx/html/index.html
