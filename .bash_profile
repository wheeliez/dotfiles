############################################
# aliases
############################################
alias ls='ls -G'
alias ll='ls -alG'


############################################
# custom functions
############################################
function cd() {
    builtin cd "$*" && ll
}


############################################
# git-aware-prompt
# https://github.com/jimeh/git-aware-prompt
############################################
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"


############################################
# git-completion & syntax coloration for git
############################################
export PS1="\[$txtgrn\]\u \[$txtcyn\]\w \[$txtylw\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
export CLICOLOR=1
export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \w\$ "


############################################
# git-completion
# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
############################################
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi


############################################
# Ruby Gem installationn
############################################
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
#export PATH

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
#export PATH="/usr/local/opt/openssl/bin:$PATH"


############################################
# Sentry Configs
############################################
export SENTRY_AUTH_TOKEN=0c29dd0634a2479fb104393fc8609c382aec07cdf7264dce9fd58ae31079e81d
export SENTRY_ORG=poka-inc

############################################
# Lokalize Configs
############################################
export LOKALISE_API_TOKEN=b37990a7dcebfe473c6699e3dc7b7bb31e73507d

