all: README.md

README.md:guessinggame.sh
	touch README.md
	echo "Project Name: **Guessing Game**">> README.md
	date >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+">> README.md

