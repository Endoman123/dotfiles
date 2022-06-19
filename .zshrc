# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Set GTK_THEME
GTK_THEME=Arc-Dark

# Miniplug
source "/usr/share/zsh/scripts/miniplug.zsh"

# Use powerlevel10k as theme
miniplug theme 'romkatv/powerlevel10k'

miniplug load

# User configuration

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Use vim as the default editor for god's sake
export EDITOR=$(which nvim)

# Java AWT fix
export _JAVA_AWT_WM_NONREPARENTING=1

# Set manpager
export MANPAGER="$(which nvim) +Man!"

# Set GPT_TTY
export GPG_TTY=$(tty)

# Set default browser here
export BROWSER=$(which qutebrowser)

# Set texmf
if [[ -d $HOME/.texmf ]]; then
    export TEXMFHOME=$HOME/.texmf
fi

# Personal aliases
if [[ -s $HOME/.aliases ]]; then
    source $HOME/.aliases
fi

# Compilation flags
export MAKEFLAGS="-j 12"

# export ARCHFLAGS="-arch x86_64"

# Gem stuff
export PATH=$PATH:$HOME/.gem/ruby/3.0.0/bin

# Wine prefix
export WINEPREFIX=$HOME/.local/wine

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
