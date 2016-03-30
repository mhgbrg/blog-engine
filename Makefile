all: parse

run: fetch parse
	cd output/ && git add . && git commit -m "Site regeneration" && git push

parse: clean
	python parse_posts.py -p posts/ -o output/

fetch:
	cd posts/ && git reset --hard && git pull

clean:
	rm -rf output/*
