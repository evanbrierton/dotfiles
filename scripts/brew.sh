# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Then pass in the Brewfile location...
arch -arm64 brew bundle --file ~/.dotfiles/Brewfile

# Update Homebrew and check for issues.
arch -arm64 brew update
arch -arm64 brew upgrade
arch -arm64 brew cleanup
arch -arm64 brew doctor