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
    # curl -o ~/.alias https://gist.githubusercontent.com/kensleDev/e27ddee966af517a712e9e2f8043eedc/raw/2e32bb7977d7f6e5b733e0ee6265dc6a56727ff5/.alias  \
    # rm ~/.zshrc \
    # curl -o ~/.zshrc https://gist.githubusercontent.com/kensleDev/e27ddee966af517a712e9e2f8043eedc/raw/2e32bb7977d7f6e5b733e0ee6265dc6a56727ff5/.zshrc
    # git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    # curl -o ~/.p10k.zsh https://gist.githubusercontent.com/kensleDev/03f198457e0e1d758ad2fb59c6eaf85b/raw/329a49b4f6af2bf46dc246e40921cd0ba3bbbd7c/.p10k.zsh  && \
    # exec bash -l

# RUN rm -rf ~/.zshrc
RUN rm -rf /root/.zshrc

COPY .zshrc /root/.zshrc
COPY .alias /root/.alias
COPY .p10k.zsh /root/.p10k.zsh

RUN zsh
# RUN mv /tmp/.bashrc ~/.bashrc