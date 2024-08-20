ASSETS=https://github.com/MightyPirates/OpenComputers/trunk/src/main/resources/assets/opencomputers

all: dependencies

dependencies:
	git init
	git config core.sparsecheckout true
	echo src/main/resources/assets/opencomputers/font.hex >> .git/info/sparse-checkout
	echo src/main/resources/assets/opencomputers/loot >> .git/info/sparse-checkout
	echo src/main/resources/assets/opencomputers/lua >> .git/info/sparse-checkout
	git remote add -f origin https://github.com/MightyPirates/OpenComputers.git
	git pull origin master-MC1.7.10
	git remote rm origin
	mv src/main/resources/assets/opencomputers/* -t src
	rm -fd src/main
clean:
	rm -rf src/lua
	rm -rf src/loot
	rm -f src/font.hex
