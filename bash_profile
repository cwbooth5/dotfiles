# This file contains various useful shell aliases and functions.
# It can be used on osx or linux.

# print out the SSL certificate for any target site
sslcert() {
	true | openssl s_client -showcerts -connect $1:443 | openssl x509 -noout -text
}

# Take in a PEM-encoded cert and output the cert with useful info prepended.
ssl-annotate() {
  openssl x509 -in $1 -issuer -subject -serial -fingerprint
}

# CD to a file's basedir
cdd() {
	cd $(dirname $1)
}

# Git shortcuts
deletebranch() {
  # delete a branch locally and remotely
	git branch
	git branch -d $1
	git push origin --delete $1
	git branch
}

# bash history stuff
export HISTSIZE=10000
export HISTFILESIZE=2000000
export HISTCONTROL=ignoreboth
export HISTIGNORE='pwd:fg:bg:alias'
export HISTTIMEFORMAT='%F %T '
shopt -s cmdhist
shopt -s histappend
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Save and reload the history after each command finishes
# export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Do not allow Ctrl+D to log off.
export IGNOREEOF=10