all: symlinks

symlinks:
	@ln -nsf $(PWD)/zsh ~/.zsh
	@ln -nsf $(PWD)/zshenv ~/.zshenv
	@ln -nsf $(PWD)/zshrc ~/.zshrc
	@ln -nsf $(PWD)/vim  ~/.vim
	@ln -nsf $(PWD)/vimrc  ~/.vimrc
	@ln -sf $(PWD)/tmux.conf ~/.tmux.conf
	@ln -sf $(PWD)/gitconfig ~/.gitconfig
	@ln -sf $(PWD)/gitexcludes ~/.gitexcludes
	@echo "Step 2: 'make vundle'"

vundle:
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	@echo "Step 3: 'make brew'"

brew: Brewfile
	brew bundle Brewfile
