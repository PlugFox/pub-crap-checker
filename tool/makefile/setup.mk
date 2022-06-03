.PHONY: setup

setup: _setup
	@fvm dart pub global activate pana
	@fvm dart pub global activate grinder
	@fvm flutter pub get
#	@grind setup
	@npm install -g firebase-tools
	-firebase login
	@firebase init
	@fvm flutter pub global activate intl_utils
	@fvm dart pub global activate fvm flutterfire_cli
	@flutterfire configure \
		-i dev.plugfox.pubChecker \
		-m dev.plugfox.pub_checker \
		-a dev.plugfox.pub_checker \
		-p pub-checker \
		-e plugfox@gmail.com \
		-o lib/src/common/constant/firebase_options.g.dart
