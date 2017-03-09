.PHONY: list build deploy

list:
	@echo "Commands:"
	@echo "  make build"
	@echo "  make deploy"

build:
	npm install
	gulp styles
	git submodule update
	cd dashboard && make

deploy:
	rsync -vrc * website.education.wisc.edu:/var/www/site/grandchallenges --exclude-from rsync-exclude
