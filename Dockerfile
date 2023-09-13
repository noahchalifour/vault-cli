FROM ubuntu

RUN apt update && apt install -y --no-install-recommends gpg curl lsb-release ca-certificates openssl
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list
RUN apt update && apt install vault -y --no-install-recommends
RUN apt clean && rm -rf /var/lib/apt/lists/*