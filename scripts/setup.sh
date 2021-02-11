# Working directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# macOS settings
$DIR/defaults.sh

# Homebrew
$DIR/brew.sh

# Symbolic links
$DIR/links.sh

# Hyper
$DIR/hyper.sh

# ssh
$DIR/ssh.sh