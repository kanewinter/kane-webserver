FROM httpd:alpine 

COPY ./public-html/ /usr/local/apache2/htdocs/

EXPOSE 80

#ENTRYPOINT ["httpd-foreground"]
CMD ["/usr/sbin/apache2", "-D",  "FOREGROUND"]