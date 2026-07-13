# Makefile para generar las programaciones didácticas (v9 - Solución Definitiva).

# --- Configuración ---
SHELL := /bin/bash
BUILD_DIR := build

# --- Herramientas ---
PANDOC := pandoc
WEASYPRINT := weasyprint
LOFFICE := libreoffice
CSV2MD := csv2md

# --- Detección automática de programaciones ---
ALL_DIRS := $(wildcard */)
# Se añade venv/ a la lista de ignorados.
IGNORED_DIRS := old/ fonts/ images/ comun/ plantillas/ Legislación/ Situaciones/ $(BUILD_DIR)/ venv/
PROGRAM_DIRS := $(filter-out $(IGNORED_DIRS), $(ALL_DIRS))
PROGRAM_DIRS := $(foreach dir,$(PROGRAM_DIRS),$(if $(filter-out README.md,$(patsubst $(dir)%,%,$(wildcard $(dir)*.md))),$(dir),))
PROGRAM_NAMES := $(patsubst %/,%,$(PROGRAM_DIRS))
PDFS := $(addprefix $(BUILD_DIR)/, $(addsuffix .pdf, $(PROGRAM_NAMES)))
EPUBS := $(addprefix $(BUILD_DIR)/, $(addsuffix .epub, $(PROGRAM_NAMES)))


# --- Reglas principales ---
.PHONY: all clean convert check_deps

all: $(PDFS) $(EPUBS)
	@echo "✅ ¡Todas las programaciones han sido generadas!"

clean:
	@echo "🧹 Limpiando el directorio de compilación..."
	@rm -rf $(BUILD_DIR)

# --- Reglas de compilación ---
.SECONDEXPANSION:

# Regla para PDF. Ahora es mucho más simple porque el HTML es autocontenido.
$(BUILD_DIR)/%.pdf: $(BUILD_DIR)/%.html
	@echo "📄 Creando PDF para $*..."
	@mkdir -p $(BUILD_DIR)
	$(WEASYPRINT) $< $@

# Define un comando reutilizable para pandoc
# SOLUCIÓN CLAVE: Se usa --embed-resources y --self-contained.
# Esto incrusta el CSS, fuentes e imágenes en el HTML, eliminando todos los problemas de rutas.
define PANDOC_CMD
(cd $* && \
	$(PANDOC) --template="../template.html" \
	--embed-resources --self-contained \
	-V current_date="$(shell date +'$(1)')" \
	-f markdown-smart --toc --toc-depth=2 -c "style.css" --filter pandoc-include \
	$(patsubst $*/%,%,$(filter $*/%.md,$^)) \
	-o ../$@ \
)
endef

# Regla para generar el HTML intermedio.
$(BUILD_DIR)/%.html: convert template.html style.css $$(shell find $$* -name '*.md' -not -name 'README.md' | sort)
	@echo "🌐 Creando HTML para $*..."
	@mkdir -p $(BUILD_DIR)
	$(call PANDOC_CMD,%Y-%m-%d)

# Regla para generar el EPUB (no necesita self-contained, usa el CSS normal).
$(BUILD_DIR)/%.epub: convert template.html style.css $$(shell find $$* -name '*.md' -not -name 'README.md' | sort)
	@echo "📖 Creando EPUB para $*..."
	@mkdir -p $(BUILD_DIR)
	(cd $* && \
		$(PANDOC) --template="../template.html" \
		-V current_date="$(shell date +'%D')" \
		-f markdown-smart --toc --toc-depth=2 -c "style.css" --filter pandoc-include \
		$(patsubst $*/%,%,$(filter $*/%.md,$^)) \
		-o ../$@ \
	)

# --- Reglas de conversión ---
convert:
	@echo "🔄 Convirtiendo ficheros ODS y README.pandoc..."
	@find . -type f -name '*.ods' -not -path "./old/*" -not -path "./$(BUILD_DIR)/*" -not -path "./venv/*" -exec sh -c ' \
		for file do \
			base=$${file%.*}; \
			if [ ! -f "$$base.md" ] || [ "$$file" -nt "$$base.md" ]; then \
				echo "  -> Convirtiendo $$file..."; \
				dir=$$(dirname "$$file"); \
				$(LOFFICE) --headless --convert-to csv --infilter="CSV:44,34,76,1" --outdir "$$dir" "$$file" &>/dev/null; \
				$(CSV2MD) "$$base.csv" > "$$base.md"; \
				rm "$$base.csv"; \
			fi \
		done' sh {} +
	@find . -type f -name 'README.pandoc' -not -path "./old/*" -not -path "./$(BUILD_DIR)/*" -not -path "./venv/*" -exec sh -c ' \
		for file do \
			base=$${file%.*}; \
			if [ ! -f "$$base.md" ] || [ "$$file" -nt "$$base.md" ]; then \
				echo "  -> Convirtiendo $$file..."; \
				$(PANDOC) -f markdown-smart -t gfm --filter pandoc-include "$$file" -o "$$base.md"; \
			fi \
		done' sh {} +

check_deps:
	$(foreach tool,pandoc libreoffice csv2md weasyprint, \
		$(if $(shell command -v $(tool)),,$(error El comando "$(tool)" no está instalado.)))
	@echo "👍 Todas las dependencias están instaladas."
