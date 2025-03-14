dpp () {
	git diff $1 > dpp.txt
	npp -multiInst -notabbar -nosession -noPlugin -ldiff dpp.txt 
	rm dpp.txt
}