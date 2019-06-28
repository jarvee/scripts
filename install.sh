# Create a ~/.ssh folder if it doesn't exit.
cd "$HOME"
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh
source ~/.bash_profile