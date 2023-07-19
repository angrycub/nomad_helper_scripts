#!/bin/bash

InstallDestination="/usr/local/bin"

function install {
  echo -n "Installing $1 to ${InstallDestination}"
 if [[ -L ${InstallDestination}/${1} ]]
  then
    echo -n "🗑 "
    rm -f ${InstallDestination}/${1}
  fi
  echo -n "🔗"
  ln -s `pwd`/${1} ${InstallDestination}/${1}
  echo ""
}

install gen_test_certs
install consul_push
install nomad_push
install nomad_reset
install nomad_start
install nomad_stop_all
install nomad_version
install nomad_job_collect
install fetch
