install:
	sudo mkdir -p /etc/bash_completion.d
	mkdir -p $(HOME)/bin
	mkdir -p $(HOME)/.sshmultitool
	sudo cp bash-completion /etc/bash_completion.d/sshmultitool
	cp sshmultitool $(HOME)/bin
	chmod +x $(HOME)/bin/sshmultitool
	cp sshmultitool.cfg.template $(HOME)/.sshmultitool/sshmultitool.cfg.template
