alias zshrefresh="source ~/.zshrc"
alias dotfiles="code ~/dotfiles"

alias g=git
alias glog='git log --stat'
# alias glgg='git log --graph'
# alias glo="git log --oneline --decorate"
# alias glog="git log --oneline --decorate --graph"
# alias gloga="git log --oneline --decorate --graph --all"
alias gpush='git push --set-upstream origin $(git_current_branch)'
alias gpull='git pull --rebase --autostash -v'
alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign --message "--wip--"'
alias gunwip='git rev-list --max-count=1 --format="%s" HEAD | grep -q "--wip--" && git reset HEAD~1'
alias gresetlast="git reset HEAD~"
alias gbranch="git branch"
alias gbranchcleanup='LANG=C git branch --no-color -vv | grep ": gone\]" | awk '"'"'{print $1}'"'"' | xargs git branch -d'
alias gcheckout="git checkout"
alias gfetch="git fetch --all --prune"
alias gcount="git shortlog --summary -n"
alias gstash="git stash --include-untracked"
alias gignore="git update-index --assume-unchanged"
alias gunignore="git update-index --no-assume-unchanged"
