alias tmux="tmux -2"
alias ls="ls --color=auto"

tc()
{
    cd $1;
    tmux refresh-client -S;
}
