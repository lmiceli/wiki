cd  ~/repositories/sdos/core/

alias release_md='./gradlew assembleMassimoRelease'
alias release_bsk='./gradlew assembleBershkaRelease'
alias _activ='adb shell dumpsys activity activities | grep FocusedActivity'
alias _paused='adb shell dumpsys activity activities | grep PausedActivity'

