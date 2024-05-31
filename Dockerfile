FROM ubuntu:latest

EXPOSE 3000

RUN apt update && apt upgrade -y

RUN apt install -y git npm nodejs

RUN git clone https://github.com/dillfrescott/animunet

WORKDIR animunet

RUN npm install && npm run build

ENTRYPOINT ["npm", "run", "start"]