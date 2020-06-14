all: README.md

README.md:guessinggame.sh
	touch README.md
	echo "# Project Name: **Guessing Game**">> README.md
	echo "## Make Date:">> README.md
	date >> README.md
	echo "### No. of Lines" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
