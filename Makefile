image:
	@ docker build -t troydai/myalpine:amd64 arch/x86_64
	@ docker build -t troydai/myalpine:arm64 arch/aarch64

run: image
	@ docker run --rm -it troydai/myalpine
