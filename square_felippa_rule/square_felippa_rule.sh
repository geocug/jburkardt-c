#!/bin/bash
#
cp square_felippa_rule.h /$HOME/include
#
gcc -c -I /$HOME/include square_felippa_rule.c
if [ $? -ne 0 ]; then
  echo "Errors compiling square_felippa_rule.c"
  exit
fi
#
mv square_felippa_rule.o ~/libc/$ARCH/square_felippa_rule.o
#
echo "Library installed as ~/libc/$ARCH/square_felippa_rule.o"
