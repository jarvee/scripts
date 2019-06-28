#!/bin/bash           
# add alias ssh='f(){ $HOME/.ssh/cp_conf.sh "$@" && ssh "$@";}; f' to your .bash_profile
# and copy this file to your ~/.ssh/
UNAME=$1              
OUTPUT="$(ssh-keygen -H -F $UNAME)"
BASEDIR=$(dirname "$0")
echo "$BASEDIR"

if [ -z "$OUTPUT" ]                                                                                   
then                  
    scp -r $HOME/.ssh/ $UNAME:~/
    scp $HOME/.vimrc $UNAME:~/
    scp $HOME/.bash_profile $UNAME:~/
    scp $BASEDIR/install.sh $UNAME:~/
fi 
