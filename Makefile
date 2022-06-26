#-------------------------------------------------------------------------------

ifeq ($(strip $(DEVKITARM)),)
$(error Please set DEVKITARM in your environment. export DEVKITARM=/path/to/devkitARM)
endif

include $(DEVKITARM)/base_tools

#-------------------------------------------------------------------------------

include config.mk

export ARMIPS ?= armips.exe

#-------------------------------------------------------------------------------

.PHONY: all rom

all: rom

rom: $(ROM_CODE).asm $(ROM_CODE).gba
	@echo "\nCreating ROM"
	$(ARMIPS) $(ROM_CODE).asm -definelabel insertinto $(OFFSET) -sym offsets_$(ROM_CODE).txt

firered:              	; @$(MAKE) ROM_CODE=BPRE
rojofuego:           	; @$(MAKE) ROM_CODE=BPRS
