if [ -z "$1" ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

export NIX_USER="$1"

export FLAKE_USER=$(whoami)
export FLAKE_HOME=$(echo $HOME)
export NIXPKGS_ALLOW_BROKEN=1
nix flake update --flake ./nix
nix run home-manager -- switch --flake ./nix/#${NIX_USER} --impure
