FROM gitpod/workspace-mysql:branch-mysql
USER root
RUN /etc/init.d/mysql start