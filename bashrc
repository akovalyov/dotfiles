PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# added by travis gem
[ -f /home/andrew/.travis/travis.sh ] && source /home/andrew/.travis/travis.sh

export NVM_DIR="/home/andrew/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export PACKAGE_DIRS=/home/andrew/meteor/packages

#mysq workbench @see http://askubuntu.com/questions/554280/mysql-workbench-and-gnome-keyring-daemon-problem
export GNOME_KEYRING_CONTROL=$(ls -d /run/user/1000/keyring-*)

#mocp and pulseaudio workaround, reference - https://bbs.archlinux.org/viewtopic.php?id=164959
export PULSE_LATENCY_MSEC=60

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.bin" ] ; then
    PATH="$HOME/.bin:$PATH"
fi



export NPM_PACKAGES="/home/andrew/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
export PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH  # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

PERL_MB_OPT="--install_base \"/home/andrew/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/andrew/perl5"; export PERL_MM_OPT;

export PATH="$PATH:$HOME/.composer/vendor/bin"

#android
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$HOME/Android/Sdk/tools
export PATH=$PATH:$HOME/Android/Sdk/platform-tools

# Load xdebug Zend extension with php command
alias php='php -dzend_extension=xdebug.so'
# PHPUnit needs xdebug for coverage. In this case, just make an alias with php command prefix.
alias phpunit='php $(which phpunit)'

alias behat='php $(which behat)'

# Enable programmable sdb completion features.
if [ -f ~/.sdb/.sdb-completion.bash ]; then
 source ~/.sdb/.sdb-completion.bash
fi
source /home/andrew/tizen-sdk/tools/ide/bin/tizen-autocomplete

alias optimize_pdf='function _optimize(){ pdf2ps "$1" - | ps2pdf -dPDFSETTINGS=/ebook - "ompitized_$1" && echo "Optimized file is saved to optimized_$1"; };_optimize'

[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
export PHPBREW_SET_PROMPT=1

export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

[[ -s "/home/andrew/.gvm/scripts/gvm" ]] && source "/home/andrew/.gvm/scripts/gvm"

