# The .bash_profile is read at the beginning of a login
# shell session. Here, it calls the .bashrc file, which
# is read at the beginning of non-login shell sessions.
# This allows me to keep individual session options in 
# one file.
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
