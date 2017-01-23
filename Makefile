.PHONY: build deploy

build:
	npm install
	gulp styles
	git submodule update
	cd dashboard && make

deploy: build
	rsync -vrc * website.education.wisc.edu:/var/www/site/grandchallenges --exclude-from rsync-exclude
