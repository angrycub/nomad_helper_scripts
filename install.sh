#! /bin/bash

InstallDestination="/usr/local/bin"

function install {
 if [[ -L ${InstallDestination}/${1} ]]
  then
    echo -n "Removing existing symlink and "
    rm -f ${InstallDestination}/${1}
  fi
  echo -n "Creating symlink to ${1} in ${InstallDestination}... " 
  ln -s `pwd`/${1} ${InstallDestination}/${1}
  echo "Done."
}

install cluster_push
install consul_push
install nomad_gc
install nomad_push
install nomad_reset
install nomad_start
install nomad_stop_all  
install nomad_version
install fetch
