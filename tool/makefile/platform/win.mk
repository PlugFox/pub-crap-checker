.PHONY: codegen codegen!

CFLAGS += -D win

_echo_os:
	@echo "Running Makefile on Windows"

_setup:
	@echo "Placeholder for Windows setup"

codegen!: get
	@fvm flutter pub run build_runner build --delete-conflicting-outputs

codegen: codegen