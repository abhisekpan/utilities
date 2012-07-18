alias ll='ls -al'
alias la="ls -la"
alias ..="cd .."
alias df="df -h"
alias doc='cd ~/Documents'
alias desk='cd ~/Desktop'
alias semacs="sudo emacs"
alias sherpa20="ssh -Y pana@sherpa20"
alias sherpa17="ssh -Y pana@sherpa17"
alias ranch08="ssh -Y pana@sdcranch08"
alias cleat="clear"
alias simics="clear; sudo ./simics -stall -q -no-copyright"
alias make_ruby="sudo make PROTOCOL=MESI_CMP_directory DESTINATION=MESI_CMP_directory TARGET_MACHINE_TYPE=x86"

function cdl { cd $1; ls;}
function c { cd $1;}
function dircp { mkdir $2; cd $1; find . -type d | cpio -pvdm ../$2; cd ..;}
function filecp { cd $1; find . -type f | cpio -pvdm ../$2; cd ..;}