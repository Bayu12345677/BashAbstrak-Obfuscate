PROJECT_NAME := Bash-Obfuscate-Abstrak
VERSION      := $(shell date -u +%Y.%m.%d.%H%M%S)
BUILD_DATE   := $(shell date -u +"%Y-%m-%d %H:%M:%S UTC")
SRC_DIR      := src
LIB_DIR      := lib
TEST_DIR     := test
MAIN_SCRIPT  := $(SRC_DIR)/main.sh
INSTALL_PATH := .

SHELL := /data/data/com.termux/files/usr/bin/bash

REQUIRE := xz-utils ruby figlet toilet gum fzf nodejs python xxd binutils bc curl wget pv bzip2 openssl-tool

# Colors
RESET := \033[0m
GREEN := \033[92m
YELL  := \033[93m
RED   := \033[91m
CYAN  := \033[96m
WHITE := \033[97m

# Quiet mode
ifneq ($(V),1)
 Q := @
endif

.DEFAULT_GOAL := help

##  Check Module Dependencies
define check_tool
	command -v $$pkg >/dev/null 2>&1 || dpkg -l | grep -qw $$pkg || ( printf "$(RED)Module Tidak Ditemukan: $(WHITE)%s$(RESET)\n" "$(1)"; exit 1 )
endef

## HELP / GUIDE

define help
	@echo -e "$(YELL) Panduan User$(RED):"
	@echo -e "$(RED)+$(CYAN)----------------"
	@echo -e "$(RED)|"
	@echo -e "$(RED)+$(YELL)->$(WHITE) make install $(CYAN)($(GREEN)install deps$(CYAN))"
	@echo -e "$(RED)+$(YELL)->$(WHITE) make run     $(CYAN)($(GREEN)running tools$(CYAN))"
	@echo -e "$(RED)+$(YELL)->$(WHITE) make update  $(CYAN)($(GREEN)update repo$(CYAN))"
	@echo -e "$(RED)+$(YELL)->$(WHITE) make help    $(CYAN)($(GREEN)User Guide$(CYAN))"
	@echo -e "$(RED)+$(CYAN)--------------------------------------"
	@echo -e "$(RED)+     $(YELL)[ $(CYAN)- $(GREEN)Bash $(RED)ID $(CYAN)framework $(WHITE)oo $(CYAN)- $(YELL)]"
	@echo -e "$(RED)+$(CYAN)--------------------------------------"
	@echo -e "           $(WHITE)version $(CYAN)1$(RED).$(CYAN)0$(RED).$(CYAN)2$(RESET)"
endef



## Template Setup (display only)
define template
	@echo "Template Setup Hasil Obfuscate"
	@echo "\$ apt-get update"
	@echo "\$ apt-get upgrade"
	@echo "\$ apt-get install xxd xz-utils binutils -y"
endef


## TARGETS
install:
	@echo -e "$(CYAN)Menginstall Semua Dependencies ...$(RESET)"
	@for pkg in $(REQUIRE); do \
		echo " -> $$pkg"; \
		pkg install -y $$pkg  || echo "$(RED)Gagal menginstall:$(WHITE) $$pkg$(RESET)"; \
	done
	@pip install -r req.txt
	@echo -e "$(GREEN)Selesai Menginstall Dependencies.$(RESET)"

check:
	@echo -e "$(CYAN)Cek Dependencies...$(RESET)"
	@for pkg in $(REQUIRE); do \
		$(call check_tool,$$pkg); \
	done
	@echo -e "$(GREEN)Semua module aman.$(RESET)"

run: check
	@echo -e "$(GREEN)Running main.sh...$(RESET)"
	$(SHELL) $(MAIN_SCRIPT)

update:
	@git pull
	@echo -e "$(GREEN)Repo updated.$(RESET)"


help:
	$(help)
