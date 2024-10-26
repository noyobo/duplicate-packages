sync-antd:
	rm -rf antd package
	mkdir antd
	cd antd && npm pack antd && tar -xzf antd-*.tgz && cd package && \
	sed -i '' 's/"name": "antd"/"name": "@noyobo\/antd"/' package.json && \
	sed -i '' '/"scripts": {/,/},/d' package.json && \
	npm publish --access public --dry-run
