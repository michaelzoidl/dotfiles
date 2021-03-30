export ZSH=/Users/$USER/.oh-my-zsh

# Load Antigen
. ~/.dotfiles/antigen/init.zsh

source /usr/local/share/antigen/antigen.zsh
source /opt/homebrew/share/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle djui/alias-tips
antigen bundle git
antigen bundle git-extras
antigen bundle npm
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

CASE_SENSITIVE="true"

ZSH_THEME=michaelzoidl

source $ZSH/oh-my-zsh.sh

export EDITOR='vim';
export NODE_REPL_HISTORY=~/.node_history;
export NODE_REPL_HISTORY_SIZE='32768';
export NODE_REPL_MODE='sloppy';
export PYTHONIOENCODING='UTF-8';
export HISTSIZE='32768';
export HISTFILESIZE="${HISTSIZE}";
export HISTFILE=~/.zsh_history
export HISTCONTROL='ignoreboth';
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear";
export LANG='en_US.UTF-8';
export LC_ALL='en_US.UTF-8';
export MANPAGER='less -X';

GIT_AUTHOR_NAME="Michael Zoidl"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="github@michaelzoidl.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"

alias dl="~/Downloads"
alias n="npm run"
alias ydl="youtube-dl"
alias cat="bat"

if command -v brew >/dev/null 2>&1; then
	# Load rupa's z if installed
	[ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi

export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
