if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
export PATH="/usr/local/opt/node@8/bin:$PATH"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH="/usr/local/opt/sqlite/bin:$PATH"
