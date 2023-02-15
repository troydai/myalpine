image:
	@ docker build -t myalpine .

run: image
	@ docker run --rm -it myalpine