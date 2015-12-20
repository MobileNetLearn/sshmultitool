DESTDIR = $(HOME)/bin
ifeq "$(USER)" "root"
	DESTDIR = /usr/local/bin
endif

install:
ifneq "$(USER)" "root"
	mkdir -p $(HOME)/.sshmultitool
	cp sshmultitool.cfg.template $(HOME)/.sshmultitool/sshmultitool.cfg.template
endif
	mkdir -p $(DESTDIR)
	cp sshmultitool $(DESTDIR)
	chmod +x $(DESTDIR)/sshmultitool

bashcompletion:
	sudo mkdir -p /etc/bash_completion.d
	sudo cp bash-completion /etc/bash_completion.d/sshmultitool
