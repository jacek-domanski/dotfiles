dpp () {
	git diff $@ > dpp.txt && npp -multiInst -notabbar -nosession -noPlugin -ldiff dpp.txt 
	rm dpp.txt
}