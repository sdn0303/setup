.PONY: all

all: install-brew install-git install-zsh install-python install-go install-node add-path add-vim-setting restart-shell

install-brew:
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

install-git:
	brew install git

install-zsh:
	brew install zsh && \
	echo /usr/local/bin/zsh | sudo tee -a /etc/shells && \
	cat /etc/shells && \
	chsh -s /usr/local/bin/zsh && \
	curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

install-python:
	brew install pyenv && \
	pyenv install 3.7.0 && \
	pyenv global 3.7.0 && \
	pip install --upgrade pip && \
	pip install pipenv

install-go:
	brew install go

install-node:
	brew install nodenv && \
	nodenv install 10.16.3 && \
	nodenv global 10.16.3

add-path: add-path.sh
	sh ./add-path.sh

add-vim-setting:
	git clone https://github.com/sdn0303/my_vim_setting.git && \
	mv ./my_vim_setting/.vimrc ~/ && \
	mv ./my_vim_setting/.vim ~/

restart-shell:
	exec $$SHELL -l
