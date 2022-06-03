.PHONY: setup

setup: _setup
	@dart pub global activate pana
	@dart pub global activate grinder
	@fvm flutter pub get
	@grind setup
	@npm install -g firebase-tools
	-firebase login
	@firebase init
	@fvm flutter pub global activate intl_utils
	@dart pub global activate fvm flutterfire_cli
	@fvm flutterfire configure \
		-i dev.plugfox.pubPackages \
		-m dev.plugfox.pub_packages \
		-a dev.plugfox.pub_packages \
		-p pub-packages \
		-e plugfox@gmail.com \
		-o lib/src/common/constant/firebase_options.g.dart
