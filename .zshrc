export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/sbin
export GOPATH=$HOME/go
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.2.jdk/Contents/Home
#export WILDFLY_HOME=/usr/local/Cellar/wildfly@9.0.2/9.0.2.Final/libexec/
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="spaceship"

plugins=(
	git
 	osx
)

source $ZSH/oh-my-zsh.sh

setopt autonamedirs
DISABLE_UNTRACKED_FILES_DIRTY="true"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export PATH="/usr/local/opt/bison/bin:$PATH"

source $HOME/.aliases
if [[ -a $HOME/.aliases_spec ]]; then
	source $HOME/.aliases_spec
fi
