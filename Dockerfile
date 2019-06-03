FROM gitpod/workspace-full-vnc
RUN sudo apt-get update
RUN sudo apt-get install wget
# A browser for testing
RUN sudo apt-get install -y firefox
# A REST Client for express.js API testing
RUN wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
RUN sudo tar -xzf postman.tar.gz -C /opt
RUN rm postman.tar.gz
RUN sudo ln -s /opt/Postman/Postman /usr/bin/postman
# The powerful Visual Studio Code for someone that wants it
RUN sudo apt-get install -y software-properties-common apt-transport-https
RUN wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
RUN sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
RUN sudo apt-get update && sudo apt-get -y install code
# A Database Client is always useful with Express.js
RUN sudo apt-get install -y openjdk-8-jdk
RUN wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
RUN echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list
RUN sudo apt update && sudo apt install -y dbeaver-ce
