#
#Version 0.0.0.0a
#

FROM httpd:alpine 

RUN sed -i 's/Listen\ 80/Listen\ 5000/g' /usr/local/apache2/conf/httpd.conf

COPY ./public-html/ /usr/local/apache2/htdocs/

EXPOSE 5000

ENTRYPOINT ["httpd-foreground"]
