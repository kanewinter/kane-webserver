FROM httpd #https://hub.docker.com/_/httpd/
cd /usr/local/apache2/htdocs/
git clone git@github.com:kanewinter/stuff.git
cd stuff
git checkout gh-pages
COPY ./public-html/ /usr/local/apache2/htdocs/
