#alias vim=nvim
alias git=hub

if test (uname -s) = "Darwin"
  # nix
  export NIX_PATH="nixpkgs=/nix/var/nix/profiles/per-user/root/channels/nixpkgs:/nix/var/nix/profiles/per-user/root/channels"
  # any-nix-shell fish --info-right | source

  # docker machine shit
  export DOCKER_TLS_VERIFY="1"
  export DOCKER_HOST="tcp://192.168.99.100:2376"
  export DOCKER_CERT_PATH="/Users/gs/.docker/machine/machines/default"
  export DOCKER_MACHINE_NAME="default"
end

alias icat="kitty +kitten icat"
alias kdiff="kitty +kitten icat"
alias em="emacs --no-window-system"
#alias vim=em

alias ersync="rsync -rHhu --progress"

alias kb=keybase

export EDITOR="vim"

export GOPATH=$HOME/go
export N_PREFIX=$HOME/n

export GDK_SCALE=0.7
export GDK_DPI_SCALE=0.7
export CLUTTER_SCALE=0.7

# hadk stuff
set -x PLATFORM_SDK_ROOT /srv/mer
alias sfossdk=$PLATFORM_SDK_ROOT/sdks/sfossdk/mer-sdk-chroot
alias hadksdk="$PLATFORM_SDK_ROOT/sdks/sfossdk/usr/bin/ubu-chroot -r $PLATFORM_SDK_ROOT/sdks/sfossdk/srv/mer/sdks/ubuntu"
set -x ANDROID_ROOT $HOME/Dev/hadk

# dkp
if test -e /opt/devkitpro
  set -x DEVKITPRO /opt/devkitpro
  set -x DEVKITARM $DEVKITPRO/devkitARM
  set -x DEVKITPPC $DEVKITPRO/devkitPPC
  set -x PATH $DEVKITPRO/tools/bin $PATH
end
