FROM httpd 
# https://hub.docker.com/_/httpd/


#Attempt to pull webpage content from github, Needs the ssh key set up
#RUN apt-get update && apt-get install -y				\
#        git                                          && \
#    apt-get clean
#RUN cd /usr/local/apache2/htdocs/                         && \
#    git clone git@github.com:kanewinter/stuff.git         && \
#    cd stuff                                              && \
#    git checkout gh-pages


COPY ./public-html/ /usr/local/apache2/htdocs/
