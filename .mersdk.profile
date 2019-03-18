export PS1="PlatformSDK $PS1"
export TERM=xterm
[ -d /etc/bash_completion.d ] && for i in /etc/bash_completion.d/*;do . $i;done

alias hadk-ubu="ubu-chroot -r /srv/mer/sdks/ubuntu"

function hadk() { source $HOME/.hadk.env; echo "Env setup for $DEVICE"; }
hadk
