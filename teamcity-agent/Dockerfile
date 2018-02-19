FROM jetbrains/teamcity-agent

RUN \
    curl -sL https://deb.nodesource.com/setup_9.x | bash - && \
    apt-get update && \
    apt-get install -y nodejs && \
    npm install -g yarn create-react-app