FROM google/cloud-sdk:alpine
LABEL maintainer="j.amogh06@gmail.com"
RUN gcloud components install kubectl
RUN curl -o /tmp/terraform.zip https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip
RUN unzip /tmp/terraform.zip -d /opt/
RUN ln -s /opt/terraform /usr/local/bin/terraform
RUN rm /tmp/terraform.zip
WORKDIR /demo-app
RUN git clone https://github.com/AmoghAJ/demo-app.git /demo-app
CMD ["git", "pull"]
