#!/bin/bash

case "$1" in 
  # --------------------------------------------------------------------------------------------------------------
  'init')
    VAR="JUST A VAR"
    SHOW_VAR() {
      echo "$VAR"
    }
    export VAR
    export -f SHOW_VAR
  ;;
  # --------------------------------------------------------------------------------------------------------------
  'run')
    SHOW_VAR
  ;;
  # --------------------------------------------------------------------------------------------------------------
  'run2')
    travis_wait SHOW_VAR
  ;;
  # --------------------------------------------------------------------------------------------------------------
  'test-real-path')
    mkdir -p /tmp/comp/prog/v1.2.0/bin
    touch /tmp/comp/prog/v1.2.0/bin/app
    realpath /tmp/comp/prog/v*/bin/app
  ;;
esac
