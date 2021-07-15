#!/bin/sh

# default parameters
ARGUMENT="DEFAULT"

while [[ $# -gt 0 ]]; do
  case ${1} in
      --init)
      ARGUMENT="INIT"; shift;;
      --reset)
      ARGUMENT="RESET"; shift;;
      --help)
      ARGUMENT="HELP"; shift;;
      *)
      shift;;
  esac
done
