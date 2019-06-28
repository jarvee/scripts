# SCRIPTS

### SCP FILES TO REMOTE 

Add alias ssh='f(){ $HOME/.ssh/cp_conf.sh "$@" && ssh "$@";}; f' to your .bash_profile
and copy this file to your ~/.ssh/

### INSTALLATION ON REMOTE

ssh to new server
./install.sh
