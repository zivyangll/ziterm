# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/yangll/.oh-my-zsh
export EDITOR=/usr/local/bin/vim

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(autojump zsh-autosuggestions zsh-syntax-highlighting osx node npm)

source $ZSH/oh-my-zsh.sh

# User configuration

# 配置命令行颜色
export CLICOLOR=1

# 配置命令行 vi 模式，k/j 历史命令
# set -o vi

# Node 环境
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"
export ELECTRON_MIRROR="https://npm.taobao.org/mirrors/electron/"
export PHANTOMJS_MIRROR="https://npm.taobao.org/mirrors/phantomjs"

# 配置 antojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# 配置 git aliase
alias gb="git branch"
alias gc="git checkout"
alias ga="git add -A"
alias gs="git status --short"
alias gp="git pull "
alias gm="git commit -m"
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# 配置 tree aliase
alias tree1="tree -aL 1"
alias tree2="tree -aL 2 -I node_modules"
alias tree3="tree -aL 3 -I node_modules"
alias tree4="tree -aL 4 -I node_modules"
alias tree5="tree -aL 5 -I node_modules"

# 配置 VSCode
export PATH=/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin:$PATH


# 配置 nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# sublime 命令行打开
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'


#alias for cnpm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"

# 配置 python3
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# 默认启动 tmux
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi

