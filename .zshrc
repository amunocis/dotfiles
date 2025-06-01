# Lines configured by zsh-newuser-install
export PATH="$HOME/.local/bin:$PATH"

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/spacelama/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Oh-My-Posh
eval "$(oh-my-posh init zsh --config https://raw.githubusercontent.com/amunocis/warp-omp/refs/heads/main/warp.omp.toml)"

source /usr/share/nvm/init-nvm.sh

# Opciones para el historial (añadir estas líneas)
setopt HIST_IGNORE_DUPS     # No guardar comandos repetidos consecutivamente
setopt HIST_SAVE_NO_DUPS    # No guardar comandos si ya existen en el historial
setopt HIST_IGNORE_ALL_DUPS # No guardar comandos si ya existen en cualquier parte del historial
setopt HIST_EXPIRE_DUPS_FIRST # Eliminar las entradas duplicadas más antiguas primero
setopt HIST_FIND_NO_DUPS    # No mostrar entradas duplicadas al buscar en el historial
setopt HIST_NO_STORE        # No guardar el comando `history` en el historial
