FROM gitpod/workspace-postgres-vnc
# A browser for testing
RUN sudo apt-get install firefox
# A REST Client for express.js API testing
RUN sudo apt install snapd snapd-xdg-open
RUN snap install postman
# The powerful Visual Studio Code for someone that wants it
RUN sudo apt install -y software-properties-common apt-transport-https wget
RUN wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
RUN sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
RUN sudo apt update && sudo apt -y install code
# A Database Client is always useful with Express.js
RUN sudo apt-get install openjdk-8-jdk
RUN wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
RUN echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list
RUN sudo apt update && sudo apt install dbeaver-ce
