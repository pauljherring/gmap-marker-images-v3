all: teardrop
	
.PHONY: all teardrop


clean:
	rm -rf teardrop.*
	
teardrop:
	php -f ./create.php