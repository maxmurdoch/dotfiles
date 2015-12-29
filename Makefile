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
	@ln -nsf $(PWD)/.emacs.d  ~/.emacs.d
	@ln -nsf $(PWD)/.emacs  ~/.emacs
	@ln -sf $(PWD)/tmux.conf ~/.tmux.conf
	@ln -sf $(PWD)/gitconfig ~/.gitconfig
	@ln -sf $(PWD)/gitexcludes ~/.gitexcludes
	@ln -sf $(PWD)/psqlrc ~/.psqlrc
	@echo "Linking dotfiles is finished. Run 'make plug'."

plug:
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	@echo "Plug is downloaded. Install plugs with ':PlugInstall' from within vim. Then run 'make brew'."

brew: Brewfile
	brew tap Homebrew/bundle
	brew bundle
	brew bundle cleanup # lists the formulae not in the Brewfile. --force will remove the files listed.
	@echo "Brew bundle has finished. These are things brew has installed but which aren't listed in the brewfile. Now run 'make zsh'."

zsh:
	chsh -s /bin/zsh
	@echo "The default shell has been change to zsh. Now run 'make secret'."

secret:
	touch $(PWD)/secret
	@echo "Secret file built. Fill it with things you don't want checked into version control. Now run 'make fzf'."

fzf:
	/usr/local/opt/fzf/install # install shell completions for fzf
	@echo "Shell completion for fzf has been installed. Next, run 'make ssh-github'."

ssh-github:
	ssh-keygen -t rsa -b 4096 -C "max@maxmurdo.ch"
	ssh-add ~/.ssh/id_rsa_github
	pbocpy < ~/.ssh/id_rsa_github.pub
	@echo "ssh key created. The public key has been copied to the clipboard: add it to GitHub. Then test it by doing 'ssh -T git@github.com'."
