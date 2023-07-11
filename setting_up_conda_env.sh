#!/bin/bash
# Setting up UBUNTU 

# Step 1: download from Microsoft Store
# Step 2: set up username and password

sudo add-apt-repository universe
sudo add-apt-repository multiverse
sudo apt update
sudo apt upgrade

# Install miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh

# Set up bionconda
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge
conda config --set channel_priority strict

# Create conda environment for RNAseq
conda create -n RNAseq
conda activate RNAseq
conda install -c bioconda fastqc
conda install -c bioconda trimmomatic
conda install -c bioconda kallisto

# Create conda environment for blast
conda create -n blast
conda activate blast
conda install -c bioconda blast
