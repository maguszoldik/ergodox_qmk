QMK_DIR=qmk
QMK_REPO=https://github.com/qmk/qmk_firmware.git

.PHONY: install update

install:
	@git subtree add --prefix $(QMK_DIR) $(QMK_REPO) master --squash

update:
	@git subtree pull --prefix $(QMK_DIR) $(QMK_REPO) master --squash
