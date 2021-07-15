# Other XDG paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}


#PATH variable defined by me
export PATH=$HOME/.local/bin:$PATH
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"   
export PYTHONSTARTUP=~/.config/python/pythonrc

#For DENO
export DENO_INSTALL="/home/rajeev/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

export BROWSER='/mnt/c/Program Files/Mozilla Firefox/firefox.exe'
export PATH=$PATH:/usr/local/go/bin
export PATH=$HOME/go/bin:$PATH
export PATH="$HOME/bin:$PATH"
export LS_COLORS="$LS_COLORS:ow=1;95:tw=1;34:"
export EDITOR="nvim"
export VISUAL="nvim"
