## Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```zsh
xcode-select --install
```

2. Clone repo into new hidden directory.

```zsh
# Use SSH (if set up)...
git clone git@github.com:evanbrierton/dotfiles ~/.dotfiles

# ...or use HTTPS and switch remotes later.
git clone https://github.com/evanbrierton/dotfiles ~/.dotfiles
```

3. Run setup script.

```zsh
bash ~/.dotfiles/scripts/setup.sh
```