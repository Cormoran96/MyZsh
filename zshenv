typeset -U PATH cdpath manpath fpath

[[ -d "$HOME/bin" ]] && export PATH="$HOME/bin:$PATH"

if [[ -o rcs ]]; 
then
  
  # path to minimal functions
  fpath=("$HOME/.zsh/zbin" $fpath)
  autoload +X $HOME/.zsh/zbin/*(:t)

  # add directories to fpath here with fpath_autoload:
  # this will add each directory and autoload all
  # functions within
  fpath_autoload "$HOME/zbin"

fi

# Test for marc
DEBIAN_PREVENT_KEYBOARD_CHANGES=yes
