# initialize $PATH with existing bin directories

PATH="/bin"

if [ -d "/sbin" ] ; then
   PATH="/sbin:$PATH"
fi

if [ -d "/usr/bin" ] ; then
   PATH="/usr/bin:$PATH"
fi

if [ -d "/usr/sbin" ] ; then
   PATH="/usr/sbin:$PATH"
fi

if [ -d "/usr/local/bin" ] ; then
   PATH="/usr/local/bin:$PATH"
fi

if [ -d "/usr/local/sbin" ] ; then
   PATH="/usr/local/sbin:$PATH"
fi

if [ -d "$HOME/bin" ] ; then
   PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
   PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.composer/vendor/bin" ] ; then
   PATH="$HOME/.composer/vendor/bin:$PATH"
fi

if [ -d "$HOME/.npm-global" ] ; then
   PATH="$HOME/.npm-global:$PATH"
fi
