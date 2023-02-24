image:
	@ docker build --platform linux/amd64 -t troydai/myalpine:amd64 .
	@ docker build --platform linux/arm64 -t troydai/myalpine:arm64 .
