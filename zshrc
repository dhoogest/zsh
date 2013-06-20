NOISY=1
if [ $NOISY ]; then
	echo 'NOISY is ON'
	echo "reading ~/Library/init/zsh/zshrc"
fi

default_zsh_initdir=/Library/init/zsh
user_zsh_initdir=~/Library/init/zsh

if [ -r "${default_zsh_initdir}" ]; then
	zsh_initdir="${default_zsh_initdir}"
else
	zsh_initdir="${user_zsh_initdir}"
fi

##
# Source environment variable definitions
##
if [ -f "${zsh_initdir}"/environment ]; then
	. "${zsh_initdir}"/environment
fi

##
# Read user's environment variable definitions
##
if [ -f "${user_zsh_initdir}"/environment.mine ]; then
	. "${user_zsh_initdir}"/environment.mine
fi

# Source alias definitions
if [ -f "${zsh_initdir}"/aliases ]; then
	. "${zsh_initdir}"/aliases
fi

##
# Read user's alias definitions
##

if [ -f "${user_zsh_initdir}"/aliases.mine ]; then
	. "${user_zsh_initdir}"/aliases.mine
fi

# Source function definitions
if [ -f "${zsh_initdir}"/functions ]; then
	. "${zsh_initdir}"/functions
fi

##
# Read user's environment variable definitions
##
if [ -f "${user_zsh_initdir}"/functions.mine ]; then
	. "${user_zsh_initdir}"/functions.mine
fi
