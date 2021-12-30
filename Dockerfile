FROM redhat/ubi8
RUN yum -y update
RUN yum -y install nginx
RUN rm -rf /usr/share/nginx/html/
COPY dist/angular/ /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
