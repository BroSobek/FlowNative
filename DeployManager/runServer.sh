#!/bin/bash

# This script run and install all the dependencies for the Flow Native Deploy Manager

SERVERPATH="`pwd`/"

main() {

	install_dependencies
	run_server
}

install_dependencies() {
	
	# Install python3, pip and django
	if [ -n "$(command -v yum)" ]; then
		sudo yum install python3 python3-pip python3-django
	else if [ -n "$(command -v apt-get)" ]; then
		sudo apt-get install python3 python3-pip python3-django
	fi
	fi
}

run_server() {

	echo $SERVERPATH
	python3 $SERVERPATH/manage.py makemigrations
	python3 $SERVERPATH/manage.py migrate
	python3 $SERVERPATH/manage.py runserver
}

main "$@"
