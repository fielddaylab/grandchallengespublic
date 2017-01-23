default:
	npm install
	gulp styles
	git submodule update
	cd dashboard && make
	rsync -vrc * website.education.wisc.edu:/var/www/site/grandchallenges --exclude-from rsync-exclude
