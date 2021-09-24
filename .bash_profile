alias c="cd ~/code"
alias d="cd ~/code/desktop"
alias g="cd ~/code/graphql"
alias gi="cd ~/code/gifts"
alias a="cd ~/code/accountmanager"
alias r="cd ~/code/reddit"
alias v="cd ~/code/vcl"
alias o="cd ~/code/onevm"
alias p="cd ~/code/puppet"
alias m="cd ~/code/mobile"
alias sh="cd ~/code/shreddit"
alias sd="cd ~/code/snoodev"
alias f="cd ~/code/faceplate"
alias fs="cd ~/code/faceplate-sandbox"
alias k="cd ~/code/kyle-test"

alias gc="git checkout"
alias gs="git status"
alias gb="git branch"
alias gr="git reset HEAD^"
alias gd="git diff"
alias sa="git commit -n -am 'wip'"
alias grh="git reset --hard"
alias ggg="git fetch origin && git reset --hard origin/master"
alias oa="git rev-parse oauth-stuff | xargs git cherry-pick"
# shreddit auth
alias sha="git rev-parse snoodev | xargs git cherry-pick"

alias w="npm run watch"
alias st="./start.sh"
alias t="npm run test"
alias l="npm run lint:fixup"
alias clean="npm run clean && rm -rf node_modules && yarn cache clean"
alias rage="rkube cluster select devint"
alias ve="source ~/virtualenv/gifts/bin/activate"

#ulimit -n 200000
#ulimit -u 2048

export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad

gl() {
	if [ $1 ] ; then
		git log -$1 --stat
	else
		git log -1 --stat
	fi
}

parse_git_branch() {
	branch=`git symbolic-ref --short HEAD 2> /dev/null`
	if [ $branch ] ; then
		echo " ($branch)"
	else
		echo ""
	fi
}
export PS1="\[\e[36m\]\u\[\e[35m\]:\[\e[32m\]\W\[\e[33m\]\$(parse_git_branch)\[\e[37m\] ⨠ \[\e[0m\]"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PATH="/usr/local/opt/bison/bin:$PATH"

export YVM_DIR=/usr/local/opt/yvm
[ -r $YVM_DIR/yvm.sh ] && . $YVM_DIR/yvm.sh

# for d2x local
nvm use 12.22.1
export AWS_SDK_LOAD_CONFIG=true
