. ~/.bash/aliases
. ~/.bash/paths
. ~/.bash/config

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi

