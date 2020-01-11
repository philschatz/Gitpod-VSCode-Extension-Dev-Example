FROM gitpod/workspace-full-vnc

USER gitpod

RUN wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -; \
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" \
    && sudo apt-get update \
    && sudo apt-get install -y code