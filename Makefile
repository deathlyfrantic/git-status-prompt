SHELL = /bin/sh
default_target:
	cc gitprompt.c -l git2 -o git_status_prompt
