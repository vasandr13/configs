# Changing the default command line prompt on MacBook Pro

# Create this file in your home directory on your MacBook Pro.
# Example: /Users/john/.bash_profile

# The simplest one
# export PS1="$ "

# Simple one
# export PS1='$(whoami): $(pwd): $ '

# Taken from here:
# https://github.com/mathiasbynens/dotfiles
#export PS1="\[${BOLD}${MAGENTA}\]\u\[$WHITE\]@\[$ORANGE\]\h\[$WHITE\]: [\[$GREEN\]\w\[$WHITE\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" - \")\[$PURPLE\]\$(parse_git_branch)\[$WHITE\]] \$ \[$RESET\]"


# Go straight to your favourite directory
cd /<FULL_PATH_TO_YOUR_FAVOURITE_DIRECTORY_GOES_HERE>/;

# Git branch name in green colour in the prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="[\u@\h: \w ]\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "


