FROM mysql:8.0.30

ENV MYSQL_ROOT_PASSWORD root

COPY ./my.cnf /etc/mysql/conf.d/my.cnf
RUN mkdir /var/log/mysql
RUN chown mysql:mysql /var/log/mysql
RUN mkdir /var/run/mysql
RUN chown mysql:mysql /var/run/mysql