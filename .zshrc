# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh


# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys-fib"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew dircycle osx python screen tmux)

# User configuration

export PATH="$HOME/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
export PATH="$HOME/src/git-external/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
# Disable shared history because wow this is the worst feature
# (My #1 use case for history is pressing up+enter in a terminal,
# this feature breaks it if I'm working in multiple terminals)
unsetopt share_history

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# Config specific to work laptop
if [[ $(hostname) == "chris-mbp" ]]; then
  alias netbeans="open /Applications/NetBeans/NetBeans\ 8.1.app & disown"
  alias clion="open /Applications/CLion.app & disown"
  alias qt-creator="open /Users/cswetenham/Qt/Qt\ Creator.app & disown"
  alias nuke-build="rm -rf build/ && mkdir build && cd build && cmake ../src -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_CXX_FLAGS=\"-Wall -Werror\" '-GCodeBlocks - Ninja' && ninja -j 10"

  eval $(ssh-agent)

  # Added by tools-python installer
  alias activate-oxpy='export MAGICK_HOME=/usr/local/Cellar/imagemagick@6/6.9.9-26 && source /Users/cswetenham/miniconda/bin/activate oxbotica'
  alias deactivate-oxpy='source /Users/cswetenham/miniconda/bin/deactivate oxbotica'

  # export PYTHONPATH="$HOME/code/selenium-all/src/acs-llc-interface/vehiclecaninterface/scripts:$HOME/code/selenium-all/build/datatypes:$HOME/code/selenium-all/build/acsllcinterface_datatypes_python:/usr/local/lib/python2.7/site-packages"
  # So that Netbeans can find lldb debug server (a version that is correctly signed)
  export LLDB_DEBUGSERVER_PATH=/Applications/Xcode.app/Contents/SharedFrameworks/LLDB.framework/Resources/debugserver
  export JAVA_HOME=`/usr/libexec/java_home`
  export CODE_DIR="${HOME}/code"
fi
