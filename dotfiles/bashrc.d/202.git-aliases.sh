list_all_branches() {
    for k in `git branch -a | perl -pe 's/^..(.*?)( ->.*)?$/\1/'`; do echo -e `git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k -- | head -n 1`\\t$k; done | sort -r
}

alias gs='git status --short --branch'
alias gba=list_all_branches
