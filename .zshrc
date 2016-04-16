# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(bundler bower git git-extras git_remote_branch osx vagrant)

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="snugug"

# Disable Oh My ZSH prompt update
DISABLE_UPDATE_PROMPT=true

#########################
## Aliases
#########################
# ZSH Editing
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"

# Bundler
alias bcw="bundle exec compass watch --time"
alias bcc="bundle exec compass compile --time"
alias be="bundle exec"

alias mkgemfile="echo \"source 'https://rubygems.org'\ngem 'compass', '~>1.0'\" > Gemfile && bundle install --path vendor"

# Package Control
alias stackup="npm update && bower update && bundle update"

# Misc
alias grep="grep -n"

# Browsers
alias chrome="open -a 'Google Chrome'"
alias canary="open -a 'Google Chrome Canary'"
alias firefox="open -a 'Firefox'"
alias safari="open -a 'Safari'"
alias ios="open -a 'iPhone Simulator'"
alias subl="open -a 'Sublime Text'"
alias code="open -a 'Visual Studio Code'"

# Git
alias gc="git clone"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gcm="git commit -m"
alias gs="git status"

# V Top
alias vtop="vtop --theme wizard"

# List
alias lsl="ls | wc -l"

# Vagrant
alias vdf="vagrant destroy -f"
alias vu="vagrant up"
alias vs="vagrant ssh"
alias vp="vagrant provision"
alias vd="vagrant suspend"
alias vsg="vagrant ssh -c 'gulp'"

# Git Flow
alias gf="git flow"
alias gff="git flow feature"

# Fuck
alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'

alias show-hidden="defaults write com.apple.finder AppleShowAllFiles YES && killall Finder"
alias hide-hidden="defaults write com.apple.finder AppleShowAllFiles NO && killall Finder"

alias show-desktop="defaults write com.apple.finder CreateDesktop true && killall Finder"
alias hide-desktop="defaults write com.apple.finder CreateDesktop false && killall Finder"

# Jekyll
alias jkl="bundle exec jekyll"

#########################
## Functions
#########################
server() {
  chrome http://localhost:$1 && php -S localhost:$1
}

vmake() {
  vagrant package --base $1 --output $2.box
}

vadd() {
  vagrant box add $1 $1.box
}


#########################
## Ruby and NVM
#########################
# Put Gems in Homebrew folder
export GEM_HOME=$(brew --prefix)
eval "$(rbenv init -)"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# Run NVM and all its goodies
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
source $ZSH/oh-my-zsh.sh
# Travis
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

#########################
## Final ZSH stuff
#########################
# Add Z
. `brew --prefix`/etc/profile.d/z.sh
# Add ZSH Syntax Highlighting
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
