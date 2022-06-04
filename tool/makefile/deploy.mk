.PHONY: build deploy serve

build: codegen
	@fvm flutter build web --release --pwa-strategy offline-first \
		--no-source-maps --web-renderer html --csp --base-href / \
		--dart-define=environment=production

deploy: build
	@firebase deploy

serve: build
	@firebase serve