.PHONY: codegen codegen!

CFLAGS += -D osx

_echo_os:
	@echo "Running Makefile on macOS"

_setup:
	@brew update
	@brew install coreutils
	@brew install node

codegen!:
	@nohup /bin/bash -c ' \
		gtimeout 60 fvm flutter pub get \
		&& gtimeout 300 fvm flutter pub run build_runner build --delete-conflicting-outputs \
		&& say "Code generation completed" || say "Code generation failed!" ' >/dev/null 2>&1 &

codegen: get
	@fvm flutter pub run build_runner build --delete-conflicting-outputs
