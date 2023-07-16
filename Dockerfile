FROM fedora:latest
RUN dnf update -y && sudo dnf install -y git curl ansible which util-linux-user shadow-utils passwd openssl
ARG TAGS
RUN adduser --uid 1000 leo --user-group --create-home
RUN usermod -aG wheel leo
RUN echo 'leo:test' | chpasswd 
USER leo
WORKDIR /home/leo
COPY . .
CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]
