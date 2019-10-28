# set PATH to include the npm-global folder owned by me
if [ -d "$HOME/.npm/bin" ] ; then
    export PATH="$HOME/.npm/bin:$PATH"
fi
