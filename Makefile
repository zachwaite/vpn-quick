SHELL := /bin/bash
.ONESHELL:

CONFIG := $${XDG_CONFIG_HOME:-$$HOME/.config}
BIN := $$HOME/.local/bin
DATA := $${XDG_DATA_HOME:-$$HOME/.local/share}

.PHONY: install
install:
	mkdir -p $(CONFIG)/vpn-quick
	cp ./config.ovpn $(CONFIG)/vpn-quick
	mkdir -p $(BIN)
	cp ./vpn-quick $(BIN)
	mkdir -p $(DATA)/bash-completion/completions
	cp bash_completion $(DATA)/bash-completion/completions/vpn-quick

.PHONY: uninstall
uninstall:
	rm -f $(BIN)/vpn-quick
	rm -rf $(CONFIG)/vpn-quick
	rm -f $(DATA)/bash-completion/completions/vpn-quick
