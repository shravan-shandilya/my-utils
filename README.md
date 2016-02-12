# my-utils

This repo is a collection of tool or utilities that I use.


1.Fix brightness
The script for easy brightness control from terminal for Dell Vostro.This file needs sudo permission.So,I added a alias
in my .bashrc as follows
alias shine="sudo bash ~/.brightness_fix.sh"

2.lnchk
This script checks for all the symbolic links either in PWD or the first argument given.If the links are bad,they are echoed onto a file called 'bad.links'
Usage:
  $ lnchk 
  $ lnchk /home/shravan 
