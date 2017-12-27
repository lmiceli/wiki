cd  ~/repositories/sdos/core/

alias release_md='./gradlew assembleMassimoRelease'
alias release_bsk='./gradlew assembleBershkaRelease'
#alias _activ='adb shell dumpsys activity activities | grep FocusedActivity'
alias _activ="adb shell dumpsys activity activities | grep mFocusedActivity | cut -d ' ' -f 6 | grep -o '[^.]*$'"
alias _paused='adb shell dumpsys activity activities | grep PausedActivity'


alias glltmp='git log --pretty=format:"%H %ad [%an] %s" --decorate --date=short'
