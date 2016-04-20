alias c="cd /box/www/current_local"
alias r="cd /box/www/box-react-ui"
alias wr="work review"
alias wt="work test"
alias ws="work sync"
alias ww="work --no-limit"
alias gs="git status"
alias gb="git branch"
alias gr="git reset HEAD^"
alias go="ssh dev"
alias wp="sudo webpack-dev-server --config webpack.example.config.js --port 3000 --inline --hot"

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

# begin devtools provisioning to setup local development

# Remove any existing /box/www/devtools_readonly/bin from the path
PATH=$(echo $PATH | sed 's/\/box\/www\/devtools_readonly\/bin[:]*//g')

# Remove any existing /usr/local/bin from the path
PATH=$(echo $PATH | sed 's/\/usr\/local\/bin[:]*//g')

# Add /usr/local/bin and /box/www/devtools_readonly/bin to the top of your PATH
export PATH=/usr/local/bin:/box/www/devtools_readonly/bin:$PATH
# end devtools provisioning
# begin devtools
if [ -f /usr/local/etc/bash_completion ]; then
  . /usr/local/etc/bash_completion
fi
# end devtools

# other important work things
ulimit -n 2560
export PHANTOMJS_BIN=/usr/local/bin/phantomjs
export PATH=/usr/local/share/npm/bin:$PATH
