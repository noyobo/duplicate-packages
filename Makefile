PHONY: sync-antd sync-antd-dry

sync-antd:
	npm whoami
	mkdir antd
	cd antd && npm pack antd && tar -xzf antd-*.tgz && cd package && ls -al && \
	sed -i '' 's/"name": "antd"/"name": "@noyobo\/antd"/' package.json && \
	sed -i '' '/"scripts": {/,/},/d' package.json && \
	cat package.json
#	npm publish --access public

sync-antd-dry:
	rm -rf antd package
	mkdir antd
	cd antd && npm pack antd && tar -xzf antd-*.tgz && cd package && \
	sed -i '' 's/"name": "antd"/"name": "@noyobo\/antd"/' package.json && \
	sed -i '' '/"scripts": {/,/},/d' package.json && \
	npm publish --access public --dry-run
