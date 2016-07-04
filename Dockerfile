FROM python:2

RUN update-ca-certificates -f \
 && apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y postgresql-client \
 && rm -rf /var/lib/apt/lists/*

RUN curl -sL https://deb.nodesource.com/setup_4.x | bash - \
 && apt-get install -y nodejs
