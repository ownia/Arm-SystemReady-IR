mkimage -f test.its tests.itb

#openssl req -x509 -sha256 -newkey rsa:2048 -subj /CN=CRT/ \
#	-keyout CRT.key -out CRT.crt -nodes -days 365
#cert-to-efi-sig-list CRT.crt CRT.esl

/home/weiouy01/code/rk3399/out/bin/u-boot/tools/mkeficapsule \
	--private-key "CRT.key" \
	--certificate "CRT.crt" \
	--fit \
	--index 2 \
	"tests.itb" \
	"sc_fit.bin"

/home/weiouy01/code/rk3399/out/bin/u-boot/tools/mkeficapsule \
	--private-key "CRT.key" \
	--certificate "CRT.crt" \
	--raw \
	--index 2 \
	"tests.itb" \
	"sc_raw.bin"

mkimage -f test_2.its tests_2.itb

/home/weiouy01/code/rk3399/out/bin/u-boot/tools/mkeficapsule \
	--private-key "CRT.key" \
	--certificate "CRT.crt" \
	--fit \
	--index 2 \
	"tests_2.itb" \
	"sc_fit_2.bin"

/home/weiouy01/code/rk3399/out/bin/u-boot/tools/mkeficapsule \
	--private-key "CRT.key" \
	--certificate "CRT.crt" \
	--raw \
	--index 2 \
	"tests_2.itb" \
	"sc_raw_2.bin"
