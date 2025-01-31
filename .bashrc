#.bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ls="eza --icons --git"
alias l="eza -alg --color=always --group-directories-first --git --icons"
alias ll="eza -alSgh --color=always --group-directories-first --icons --header --git"
alias tree="eza --tree --color=always --group-directories-first --icons "

# Alias for neovim
alias nvim="/usr/bin/nvim"
alias vim="nvim"
export EDITOR="nvim"
export VISUAL="nvim"

# Oh My Posh config
eval "$(oh-my-posh init bash --config ~/.config/powerline/kushal.omp.json)"

if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/raty/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/raty/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/raty/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/raty/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
