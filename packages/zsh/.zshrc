[ -f "${HOME}/paths.zsh" ] && source "${HOME}/paths.zsh" 
### split zsh
if [ -d $ZSHHOME -a -r $ZSHHOME -a -x $ZSHHOME ]; then

     # soure the .profile.zsh file first
     profile_zsh="$ZSHHOME/profile.zsh"
     if [ -f "$profile_zsh" -o  -h "$profile_zsh" ] && [ -r "$profile_zsh" ]; then
         . "$profile_zsh"
     fi

     # source the remaining zsh files
     for i in $ZSHHOME/*; do
       if [ "$i" != "$profile_zsh" ]; then
         [[ ${i##*/} = *.zsh ]] && [ \( -f $i -o -h $i \) -a -r $i ] && . $i
       fi
     done
fi
# the following lines have been added by docker desktop to enable docker cli completions.
fpath=(/users/tkg2800/.docker/completions $fpath)
autoload -Uz compinit
compinit
# end of docker cli completions
. "/users/tkg2800/.deno/env"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
