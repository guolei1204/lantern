FROM centos:latest
MAINTAINER spark
RUN echo "root:docker" | chpasswd 
COPY lantern_linux_amd64 -O lantern
RUN chmod +x lantern
EXPOSE 8989
ENTRYPOINT [ "/lantern", "--addr", "0.0.0.0:8989" ]
