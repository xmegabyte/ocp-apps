FROM quay.io/rdacosta/my_httpd:latest
LABEL io.openshift.expose-services="8080:http"
RUN sed -i -e 's/Listen 80/Listen 8080/g' /etc/httpd/conf/httpd.conf && \
	chgrp -R 0 /var/log/httpd /var/run/httpd && \
	chmod -R g=u /var/log/httpd /var/run/httpd
