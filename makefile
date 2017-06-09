SHELL := /bin/bash

install: git bash

git:
	git config --global include.path "${realpath git-aliases}"

bash:
	[ -f ~/.bash_aliases ] && grep -q .bash_aliases < ~/.bashrc && printf "\n%s\n" "[[ -f ${realpath bash-aliases} ]] && . ${realpath bash-aliases}" >> ~/.bash_aliases || printf "\n%s\n" "[[ -f ${realpath bash-aliases} ]] && . ${realpath bash-aliases}" >> ~/.bashrc
