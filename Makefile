DESTDIR = $(HOME)/bin
BASHCOMPDIR = $(HOME)/.bash_completion.d
ifeq "$(USER)" "root"
	DESTDIR = /usr/local/bin
	BASHCOMPDIR = /etc/bash_completion.d
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
	mkdir -p $(BASHCOMPDIR)
	cp bash-completion $(BASHCOMPDIR)/sshmultitool
