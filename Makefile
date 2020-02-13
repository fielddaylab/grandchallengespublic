.PHONY: list build deploy

list:
	@echo "Commands:"
	@echo "  make build"
	@echo "  make deploy"

build:
	sass assets/scss/styles.scss assets/css/styles.css
	git submodule update
	cd dashboard && make

deploy:
	rsync -vrc * website.education.wisc.edu:/var/www/site/grandchallenges --exclude-from rsync-exclude
