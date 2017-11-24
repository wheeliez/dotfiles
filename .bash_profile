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
#export GEM_HOME=$HOME/.gem
#export PATH=$GEM_HOME/bin:$PATHp


# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
#export PATH

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
#export PATH="/usr/local/opt/openssl/bin:$PATH"

#export SENTRY_AUTH_TOKEN=5a1a39f829ce46c3a1569d348bf7431bb64c5557d4b34b8dbdb2370217e93b59
#export SENTRY_ORG=poka-inc
