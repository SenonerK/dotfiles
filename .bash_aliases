alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cls='clear'
alias c='xclip -selection clipboard'
alias v='xclip -o -selection clipboard'
alias y='xclip'
alias p='xclip -o'
alias vm='VBoxManage'
alias lsvm="VBoxManage list vms --long | grep -e \"Name: \" -e \"State: \" | awk '!(NR%2){if (\$2 == \"power\") a=\" \" \$3; print p \": \" \$2 a}{p=\$2}'"
alias startvm='VBoxManage startvm --type headless'


