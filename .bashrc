#cd "AndroidStudioProjects/inditex-core"

alias release_md='./gradlew assembleMassimoRelease'
alias prepro_std='./gradlew assembleStradivariusPreproduction'
alias prepro_pull='./gradlew assemblePullandbearPreproduction'
alias prepro_zh='./gradlew assembleZarahomePreproduction'
alias prepro_md='./gradlew assembleMassimoPreproduction'
alias release_std='./gradlew assembleStradivariusRelease'
alias _activ="adb shell dumpsys activity activities | grep mFocusedActivity | cut -d ' ' -f 6 | grep -o '[^.]*$'"
alias _paused='adb shell dumpsys activity activities | grep PausedActivity'

# alias glltmp='git log --pretty=format:"%H %ad [%an] %s" --decorate --date=short'
#export PATH="$PATH:/c/Users/leonardo.miceli/AppData/Local/Programs/Python/Python36-32/"
#export PATH="$PATH:/c/apache-ant-1.10.1/bin"
#! /bin/bash

# some randon guy
#PS1='\[\033[1;36m\]\u@\h:\[\033[0m\]\[\033[1;34m\]\w\[\033[0m\] \[\033[1;32m\]$(__git_ps1)\[\033[0m\]\$ '

# git bash original
#PS1='\[\033]0;$TITLEPREFIX:${PWD//[^[:ascii:]]/?}\007\]\n\[\033[32m\]\u@\h \[\033[35m\]$MSYSTEM \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$ '

# MY WIP
#PS1='\[\033[1;36m\]\u@\h:\[\033[0m\]\[\033[1;34m\]\w\[\033[0m\]\[\033[1;32m\]`__git_ps1`\[\033[0m\]\n\$ '

# completion with g

alias gl="git l"
alias gll="git ll"
alias ga="git a"
alias gpush="git push"
alias gpull="git push"
alias gre="git rebase"
alias gaa="git add -A"
#alias gca="git "
alias gcm="git commit -m"
alias gd="git diff"
alias gds="git ds"
alias gdc="git dc"
alias gs="git status"
alias gss="git status -s"
alias gco="git co"
alias gcob="git cob"
alias gb="git branch"
alias gla="git la"
#alias gla="git la"

alias dev="git checkout development"

newfb() {
        if [[ $# -eq 0 ]] ; then
                echo 'need issue number to run'
        else
                git checkout development
                git pull
                git checkout -b issue#$1
        fi
}
alias bb_newfb=newfb

fb() {
        if [[ $# -eq 0 ]] ; then
                echo 'need issue number to run'
        else
                git checkout issue#$1
        fi
}
alias bb_fb=fb

updatefb() {
        local initial_branch="$(git branch-name)"
        #echo "this is branch $initial_branch"
        git stash
        git checkout development
        git pull
        git checkout $initial_branch
        git rebase development
        git stash pop
}
alias bb_updatefb=updatefb

fb() {
        if [[ $# -eq 0 ]] ; then
                echo 'need issue number to run'
        else
                git checkout issue#$1
        fi
}
alias bb_fb=fb

# para usar bitbucket
bitbucket() {
  eval `ssh-agent -s`
  ssh-add ~/.ssh/bitbucketFromConEmu_rsa-key-20160615
}

# MY WIP no user/host
PS1='\[\033[1;36m\]\[\033[1;34m\]\w\[\033[0m\]\[\033[1;32m\]`__git_ps1`\[\033[0m\]\n\$ '


#cd /d/repositories/bitbucket/verse/android/
#cd /d/repositories/bitbucket/IMD/
echo "para ver las opciones de arranque mirar en ~/.bashrc para bitbucket type bitbucket"

cd /d/repositories/sdos/core
# clear



alias glltmp='git log --pretty=format:"%H %ad [%an] %s" --decorate --date=short'

export PATH="$PATH:/c/Users/leonardo.miceli/AppData/Local/Programs/Python/Python36-32/"
export PATH="$PATH:/c/apache-ant-1.10.1/bin"


alias _clone_core='cd ~/repositories/sdos/core-clone'
alias _inditex_core='cd ~/repositories/sdos/core/'
alias _tasknotes='cd ~/Google\ Drive/work/ITX/Tasknotes/'
alias open='explorer'

# GIT

alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gl="git log"
alias gd="git diff"
alias gb="git branch"
alias gr="git reset"
alias dev="git checkout development"

#str() {
#    git checkout STRADIAND-$1    
#}

#bstr() {
#    git checkout -b STRADIAND-$1    :
#}

#function cheat() {
#  curl "cheat.sh/$1"
#}

alias cht="cht.sh"

# adb get preferences

function adb-pull-prefs {
    # ${1} - app package
    # ${2} - prefs name
    adb exec-out run-as ${1} cat /data/data/${1}/shared_prefs/${2}.xml
}
