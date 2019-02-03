#alias vim=nvim
alias git=hub

if test (hostname) = "dachstein"
  # nix
  export NIX_PATH="nixpkgs=/nix/var/nix/profiles/per-user/root/channels/nixpkgs:/nix/var/nix/profiles/per-user/root/channels"
  any-nix-shell fish --info-right | source

  # docker machine shit
  export DOCKER_TLS_VERIFY="1"
  export DOCKER_HOST="tcp://192.168.99.100:2376"
  export DOCKER_CERT_PATH="/Users/gs/.docker/machine/machines/headless"
  export DOCKER_MACHINE_NAME="headless"
end

alias icat="kitty +kitten icat"
alias kdiff="kitty +kitten icat"
alias em="emacs --no-window-system"
#alias vim=em

export EDITOR="vim"

export GOPATH=$HOME/go
export N_PREFIX=$HOME/n

