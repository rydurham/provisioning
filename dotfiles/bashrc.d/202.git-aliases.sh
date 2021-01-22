git_purge() {
    # https://stevenharman.net/git-clean-delete-already-merged-branches
    BRANCH=`git symbolic-ref --short HEAD`
    git checkout ${BRANCH}
    git branch --merged ${BRANCH} | grep -v "\* ${BRANCH}" | xargs -n 1 git branch -d
    git remote prune origin
}

alias gs='git status --short --branch'
alias gp=git_purge
