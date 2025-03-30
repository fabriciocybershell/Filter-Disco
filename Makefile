GIMP_DIR := $(shell find "${HOME}/.config/GIMP" -mindepth 1 -maxdepth 1 -type d -name '2.*' | head -n1)

all:
	@echo 'Uso: make instalar/desinstalar'
	@echo 'Os arquivos serão instalados em `$(GIMP_DIR)`'

.PHONY: instalar desinstalar

instalar:
	@cp -vu disco_cover.scm "$(GIMP_DIR)"/scripts/
	@cp -vu gradientes/*.ggr "$(GIMP_DIR)"/gradients/
	@echo 'Instalado'

desinstalar:
	@rm -vf "$(GIMP_DIR)"/scripts/disco_cover.scm "$(GIMP_DIR)"/gradients/degrade0?.ggr
	@echo 'Desinstalado'
