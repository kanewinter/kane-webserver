#
#Version 0.0.0.0a
#

FROM httpd:alpine 

COPY ./public-html/ /usr/local/apache2/htdocs/

EXPOSE 80

ENTRYPOINT ["httpd-foreground"]
