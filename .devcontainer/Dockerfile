FROM zmkfirmware/zephyr-west-action-arm

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get install curl zsh git -y && \
    apt-get install --no-install-recommends -y \
    ssh \
    gpg && \
    rm -rf /var/lib/apt/lists/*

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash  && \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended  && \
    curl -L git.io/antigen > ~/.oh-my-zsh/plugins/antigen.zsh 

RUN rm -rf /root/.zshrc
 
COPY config/.zshrc /root/.zshrc
COPY config/.alias /root/.alias
COPY config/.p10k.zsh /root/.p10k.zsh
