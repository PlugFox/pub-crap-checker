.PHONY: clean get upgrade upgrade-major outdated

clean:
	@rm -rf coverage .dart_tool .packages pubspec.lock

get:
	@timeout 60 fvm flutter pub get

upgrade:
	@timeout 60 fvm flutter pub upgrade

upgrade-major:
	@timeout 60 fvm flutter pub upgrade --major-versions

outdated: get
	@fvm flutter pub outdated

dependencies: upgrade
	@fvm flutter pub outdated --dependency-overrides \
		--dev-dependencies --prereleases --show-all --transitive
