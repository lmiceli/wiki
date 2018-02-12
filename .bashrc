cd  ~/repositories/sdos/core/

alias release_md='./gradlew assembleMassimoRelease'
alias release_bsk='./gradlew assembleBershkaRelease'
alias prepro_std='./gradlew assembleStradivariusPreproduction'
alias release_std='./gradlew assembleStradivariusRelease'
#alias _activ='adb shell dumpsys activity activities | grep FocusedActivity'
alias _activ="adb shell dumpsys activity activities | grep mFocusedActivity | cut -d ' ' -f 6 | grep -o '[^.]*$'"
alias _paused='adb shell dumpsys activity activities | grep PausedActivity'


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
