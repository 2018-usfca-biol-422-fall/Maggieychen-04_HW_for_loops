#!/usr/bin/env bash

# A script to setup and create directory structure
# And download data files
# Initially created by Maggie Chen
# ychen254@dons.usfca.edu
# 2018-09-14

# Create and setup directory structure
echo "setting up data directory structure"
echo "data data/raw_data code output output/figures output/tables "
mkdir data data/raw_data code output output/figures output/tables

# Downloads the zip file
echo "Downloading the zip file to data/raw_data directory...."
curl -L http://npk.io/PUlBaY+ -o data/raw_data/fasta_archive.zip

# unzip the files and delete the original zip file
echo "Unzipping the zip files to data/raw_data directory..... "
echo "Deleting the zip from data/raw_data directory....."
unzip data//raw_data/fasta_archive.zip -d data/raw_data
rm data//raw_data/fasta_archive.zip
