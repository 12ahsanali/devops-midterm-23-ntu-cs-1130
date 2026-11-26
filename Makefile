.PHONY: lint test package ci

node_modules: package.json package-lock.json
	npm ci
	@touch node_modules

lint: node_modules
	npm run lint

test: node_modules
	npm run test

package: test
	npm pack

ci: lint test package
