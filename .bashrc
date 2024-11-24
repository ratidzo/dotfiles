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
alias ll="eza -aliSgh --color=always --group-directories-first --icons --header --long --git"
alias tree="eza --tree --color=always --group-directories-first --icons "

# Alias for neovim
alias nvim="/usr/bin/nvim"
alias vim="nvim"
export EDITOR="nvim"
export VISUAL="nvim"

if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
