FROM mcr.microsoft.com/playwright:v1.57.0-noble


ENV CI=true

WORKDIR /app


COPY package*.json .



ENV ALLURE_VERSION=2.29.0

RUN apt-get update && apt-get install -y openjdk-17-jre wget unzip \
    && wget https://github.com/allure-framework/allure2/releases/download/${ALLURE_VERSION}/allure-${ALLURE_VERSION}.zip \
    && unzip allure-${ALLURE_VERSION}.zip -d /opt \
    && ln -s /opt/allure-${ALLURE_VERSION}/bin/allure /usr/bin/allure


COPY . .
CMD ["npm","run","start"]

