image:
	@ docker build -t troydai/myalpine .

run: image
	@ docker run --rm -it troydai/myalpine
