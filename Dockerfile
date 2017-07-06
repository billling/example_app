FROM python_webapp

MAINTAINER amouat

ADD example_app.wsgi /var/www/flaskapp/flaskapp.wsgi
RUN rm -f /etc/apache2/apache2.conf
ADD apache2.conf /etc/apache2/apache2.conf
#CMD service apache2 start && tail -F /var/log/apache2/error.log

CMD service apache2 start 

