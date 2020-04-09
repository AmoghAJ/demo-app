FROM google/cloud-sdk:latest
LABEL maintainer="j.amogh06@gmail.com"
RUN apt-get install unzip -y
RUN curl -o /tmp https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip
RUN unzip /tmp/*.zip
RUN ln -s /opt/terraform /usr/local/bin/terraform