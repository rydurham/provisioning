list_all_branches() {
    for k in `git branch -a | perl -pe 's/^..(.*?)( ->.*)?$/\1/'`; do echo -e `git show --pretty=format:"%Cgreen%ci %Cblue%cr%Creset" $k -- | head -n 1`\\t$k; done | sort -r
}

git_purge() {
    # https://stevenharman.net/git-clean-delete-already-merged-branches
    git checkout dev
    git branch --merged dev | grep -v "\* dev" | xargs -n 1 git branch -d
}

alias gs='git status --short --branch'
alias gba=list_all_branches
alias gp=git_purge
