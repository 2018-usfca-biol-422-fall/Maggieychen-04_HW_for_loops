#!/usr/bin/env bash

# A script to count the number of sequence
# in an anbitary number of a fasta file
# and report that information to the user
# Initially created by Maggie Chen
# ychen254@dons.usfca.edu
# 2018-09-14

# expecting a fasta file formated line like this:

# >sequence_id
# AGCTCGTC.....

# This will get the ">" of each sequence_id in fasta files (grep ">")
# Then count the number of ">" as the number of sequence (the grep -c)
# Due to the script and the fasta files are in two different directories
# When running the command, please indicate the location of fasta files
# Or change the dirictory location

for file in "$@"
do
  FILENAME=$(basename "$file" .fasta)
  COUNT=$(grep -c ">" "$file" )
  echo In "$FILENAME", there are "$COUNT" sequences
done
