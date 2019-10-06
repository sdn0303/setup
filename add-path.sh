#!/usr/bin/env bash
# shellcheck disable=SC2129
# shellcheck disable=SC2016

# Add Path
echo '########################################' >> ~/.zshrc
# Pyenv
echo '# Pyenv Settings' >> ~/.zshrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
echo 'export PATH="$HOME/.pyenv/shims:$PATH"' >> ~/.zshrc
echo 'alias brew="PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin brew"' >> ~/.zshrc

# Golang
echo '# Golang Settings' >> ~/.zshrc
echo 'export GOROOT=/usr/local/opt/go/libexec' >> ~/.zshrc
echo 'export GOPATH=$HOME/go' >> ~/.zshrc
echo 'export PATH=$PATH:$GOROOT/bin:$GOPATH/bin' >> ~/.zshrc

# Nodenv
echo '# Nodenv Settings' >> ~/.zshrc
echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(nodenv init -)"' >> ~/.zshrc
echo '########################################' >> ~/.zshrc

