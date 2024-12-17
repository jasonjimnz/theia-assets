FROM elswork/theia

USER root
RUN apk add sudo nano python3
RUN python3 -m ensurepip
RUN python3 -m pip install --upgrade pip && python3 -m pip install virtualenv
RUN echo "node:node" | chpasswd
RUN echo "node ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN git clone https://github.com/jasonjimnz/theia-assets.git /home/project/theia-assets
RUN chown -R node:node /home/project 

ENTRYPOINT ["node", "/home/theia/src-gen/backend/main.js", "/home/project", "--hostname=0.0.0.0"]