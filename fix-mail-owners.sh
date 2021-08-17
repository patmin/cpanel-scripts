#! /bin/bash

setowner () {
  account=$1
  HOMEDIR=$(egrep "^${account}:" /etc/passwd | cut -d: -f6)
  cd $HOMEDIR/mail
  find . -group root -exec chown $account:$account {} \;
}

all () {
  for user in $(cut -d: -f1 /etc/domainusers)
  do
    echo $user
    setowner $user
  done
}

all
