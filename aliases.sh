alias zshrefresh="source ~/.zshrc"
alias dotfiles="code ~/dotfiles"

alias g=git
alias glog='git log --stat'
alias glog1="git log --oneline --decorate"
# alias glgg='git log --graph'
# alias glog="git log --oneline --decorate --graph"
# alias gloga="git log --oneline --decorate --graph --all"
alias gp='git push --set-upstream origin $(git_current_branch)'
alias gl='git pull --rebase --autostash -v'
alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign --message "--wip--"'
alias gunwip='git reset HEAD~'
alias gresetlast="git reset HEAD~"
alias gb="git branch"
alias gbranchcleanup='LANG=C git branch --no-color -vv | grep ": gone\]" | awk '"'"'{print $1}'"'"' | xargs git branch -D'
alias gco="git checkout"
alias gcm="git checkout master"
alias gcb="git checkout -b"
alias gf="git fetch --all --prune"
alias gcount="git shortlog --summary -n"
alias gstash="git stash --include-untracked"
alias gignore="git update-index --skip-worktree"
alias gunignore="git update-index --no-skip-worktree"
alias gignorelist="git ls-files -v . | grep ^S"
alias gfa='git fetch --all --prune'

alias gcloud="~/google-cloud-sdk/bin/gcloud"
