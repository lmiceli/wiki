cd  ~/repositories/sdos/core/

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
