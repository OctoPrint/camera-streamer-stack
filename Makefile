.PHONY: all systemd scripts configs

PREFIX := /usr/local

SCRIPTS_DIR := $(PREFIX)/bin
SYSTEMD_DIR := /etc/systemd/system
CONFIG_DIR := /etc/camera-streamer.conf.d

all:
	@echo "Nothing to do, try 'make install' instead."

install: systemd scripts configs
	@echo "Done."
	@echo "To enable the stack, run:"
	@echo "  sudo systemctl daemon-reload"
	@echo "  sudo systemctl enable camera-streamer.service"

systemd:
	@echo "Installing systemd units..."
	@install -d $(DESTDIR)$(SYSTEMD_DIR)
	@install -m 0644 systemd/* $(DESTDIR)$(SYSTEMD_DIR)

scripts:
	@echo "Installing scripts..."
	@install -d $(DESTDIR)$(SCRIPTS_DIR)
	@install -m 0755 scripts/* $(DESTDIR)$(SCRIPTS_DIR)

configs:
	@echo "Installing configs..."
	@install -d $(DESTDIR)$(CONFIG_DIR)
	@install -m 0644 configs/* $(DESTDIR)$(CONFIG_DIR)
