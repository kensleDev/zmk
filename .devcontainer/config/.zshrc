HOME_DIR=/root


export FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
# [ -f $HOME_DIR/.fzf.bash ] && source $HOME_DIR/.fzf.bash

source $HOME_DIR/.alias

source $HOME_DIR/.nvm/nvm.sh

source $HOME_DIR/.oh-my-zsh/plugins/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# Load the theme
antigen theme romkatv/powerlevel10k

# Tell antigen that you're done
antigen apply

[ -f $HOME_DIR/.fzf.zsh ] && source $HOME_DIR/.fzf.zsh

export FZF_DEFAULT_OPS="--extended"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

stty intr ^a
export PATH=~/.local/bin:"$PATH"
