all: symlinks

symlinks:
	@ln -nsf $(PWD)/zsh ~/.zsh
	@ln -nsf $(PWD)/zshenv ~/.zshenv
	@ln -nsf $(PWD)/zshrc ~/.zshrc
	@ln -nsf $(PWD)/vim  ~/.vim
	@ln -nsf $(PWD)/nvim  ~/.nvim
	@ln -nsf $(PWD)/vimrc  ~/.vimrc
	@ln -nsf $(PWD)/nvimrc  ~/.nvimrc
	@ln -nsf $(PWD)/ctags  ~/.ctags
	@ln -nsf $(PWD)/config  ~/.config
	@ln -nsf $(PWD)/emacs.d  ~/.emacs.d
	@ln -nsf $(PWD)/emacs  ~/.emacs
	@ln -sf $(PWD)/tmux.conf ~/.tmux.conf
	@ln -sf $(PWD)/gitconfig ~/.gitconfig
	@ln -sf $(PWD)/gitexcludes ~/.gitexcludes
	@ln -sf $(PWD)/psqlrc ~/.psqlrc
	@echo "Step 2: 'make plug'"

plug:
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	@echo "Step 3: 'make brew'"

brew: Brewfile
	brew tap Homebrew/bundle
	brew install caskroom/cask/brew-cask
	brew bundle
	brew bundle cleanup
