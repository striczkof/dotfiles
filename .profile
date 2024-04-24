# Homebrew
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

# Added by Toolbox App
export PATH="$PATH:/Users/striczkof/Library/Application Support/JetBrains/Toolbox/scripts"

# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH

# Cargo
. "$HOME/.cargo/env"

# OpenJDK
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Android SDK
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Java
export PATH=/opt/homebrew/Caskroom/sqlcl/23.4.0.023.2321/sqlcl/bin:"$PATH"

# Docker
export DOCKER_HOME=$HOME/.docker
export PATH=$PATH:$DOCKER_HOME/bin

# Let rc scripts know that the profile paths have been exported
_RC_PROFILE_EXPORTED=y
