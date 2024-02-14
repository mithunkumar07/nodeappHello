FROM node:18

# # Install Dapr CLI
# RUN wget -q https://raw.githubusercontent.com/dapr/cli/master/install/install.sh -O - | /bin/bash

# # Install Dapr runtime
# RUN dapr init --slim

# Install your app
WORKDIR /server
COPY package*.json ./
RUN ["npm", "install"]
COPY . .
EXPOSE 80

CMD [ "npm", "run","start" ]
