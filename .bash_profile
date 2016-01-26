alias c="cd /box/www/current_local"
alias wr="work review"
alias wt="work test"
alias ws="work sync"
alias ww="work --no-limit"
alias gs="git status"
alias gb="git branch"
alias gr="git reset HEAD^"
alias go="ssh dev"

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

