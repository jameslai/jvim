CURRENT_DIR = $(shell pwd)

setup: install coc

update: update_submodules coc

install: update
	rm ~/.vimrc || true
	ln -s $(CURRENT_DIR)/vimrc ~/.vimrc
	rm -rf ~/.vim/pack || true
	mkdir -p ~/.vim/pack
	ln -s $(CURRENT_DIR)/plugins ~/.vim/pack/plugins

coc:
	wget https://github.com/neoclide/coc.nvim/archive/release.tar.gz
	tar xzfv release.tar.gz -C plugins/start
	rm release.tar.gz


update_submodules:
	git submodule update --init
