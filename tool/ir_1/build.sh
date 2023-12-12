mkimage -f test.its tests.itb

/home/weiouy01/code/semidrive/d9/u-boot/out/tools/mkeficapsule \
	--fit \
	tests.itb \
	--index 1 \
	capsule1.bin

/home/weiouy01/code/semidrive/d9/u-boot/out/tools/mkeficapsule \
	--raw \
	tests.itb \
	--index 1 \
	capsule2.bin
