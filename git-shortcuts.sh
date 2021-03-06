alias gs='git status -s'
alias gaa='git add -A'
alias gdiff='git diff --color-words'
alias gclean='git gc --prune=now && git remote prune origin'
alias glog='git log --graph --oneline --all --decorate'
alias glogo='glog `git reflog | cut -c1-7`'

if type git-up -t > /dev/null 2>&1; then
  alias gup='git-up'
  alias gp='git-up && git push'
else
  alias gup='git pull'
  alias gp='git pull && git push' 
fi

function gc {
  gaa
  git commit -am "$1"
  gs
}

function goops {
  git commit -a --amend
  gs
}

function gbranch {
  git checkout -b $1
  git push -u origin $1
}