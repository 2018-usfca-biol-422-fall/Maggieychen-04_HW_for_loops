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
# then count the number of ">" as the number of sequence (the wc -l)

for file in "$@"
do
  grep ">" $file | wc -l
done
