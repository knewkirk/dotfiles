alias c="cd ~/code"
alias d="cd ~/code/desktop"
alias g="cd ~/code/gateway"
alias gi="cd ~/code/gifts"
alias a="cd ~/code/accountmanager"
alias r="cd ~/code/reddit"
alias v="cd ~/code/vcl"
alias p="cd ~/code/puppet"

alias gs="git status"
alias gb="git branch"
alias gr="git reset HEAD^"
alias gd="git diff"
alias sa="git commit -n -am 'wip'"
alias grh="git reset --hard"
alias ggg="git fetch origin && git reset --hard origin/master"

alias w="npm run watch"
alias st="./start.sh"
alias t="npm run test"
alias l="npm run lint:fixup"
alias clean="npm run clean && rm -rf node_modules && yarn"
alias rage="rkube cluster select devint"
alias ve="source ~/virtualenv/gifts/bin/activate"
alias sq="ssh -L 3306:gifts-production-primary.cgzk1xobcfng.us-east-1.rds.amazonaws.com:3306 gb -N"

ulimit -n 200000
ulimit -u 2048

export GQL_DEV_SHARED_SECRET=GtUdflPmwqifAG7PSoQq2wT4M17P5GFsIoJ7aB8G
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
