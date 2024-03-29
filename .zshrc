#Runs for each new Terminal session

# If you come from bash you might have to change your $PATH.

export PATH="$HOME/bin:/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/expat/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

# export MANPATH="/usr/local/man:$MANPATH"

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="gnzh"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(aterminal  autojump autopep8 brew common-aliases dircycle dirhistory docker encode64 fabric fasd geeknote gpg-agent git gitfast git-extras git-flow git-hubflow git_remote_branch github history jsontools kubectl last-working-dir  osx per-directory-history perms pip pyenv pylint python repo tmux tmuxinator urltools vagrant tugboat virtualenvwrapper web-search wd)

# Disabled plugins
# aws node


# User configuration


# You may need to manually set your language environment
export LANG=en_US.UTF-8

export PKG_CONFIG_PATH="/usr/local/opt/curl/lib/pkgconfig"
export PKG_CONFIG_PATH="/usr/local/opt/libxml2/lib/pkgconfig"


#export LDFLAGS="-L/usr/local/opt/curl/lib"
#export CPPFLAGS="-I/usr/local/opt/curl/include"
#export LDFLAGS="-L/usr/local/opt/libxml2/lib"
#export CPPFLAGS="-I/usr/local/opt/libxml2/include"



# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='bbedit'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias dotdrop="${HOME}/dotfiles/dotdrop.sh --cfg=${HOME}/dotfiles/config.yaml"
alias vpnc=/usr/local/etc/vpnc/vpnc-script
alias ls=lsd

fpath=(/usr/local/share/zsh-completions $fpath)



source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source "/usr/local/opt/zsh-git-prompt/zshrc.sh"
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/local/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


eval "$(/usr/libexec/path_helper)"


#zsh completions have been installed to:
#  /usr/local/opt/curl/share/zsh/site-functions
#  /usr/local/share/zsh/site-functions
#


# keep this last
# ~/.zshrc

eval "$(starship init zsh)"