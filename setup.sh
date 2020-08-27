# Create a reproducible environment as the one used in this study
# Install software and dependencies

# ensure pwd is the cloned repository
result=${PWD##*/}
if [ "$result" != "rumen_var_2020" ]
then
	printf "\nCurrent directory is not the cloned repository.\nSee https://github.com/pazlabgit/rumen_var_2020 for details.\n\n"
	exit 1
fi

# install miniconda 
wget https://repo.anaconda.com/miniconda/Miniconda3-4.5.12-MacOSX-x86_64.sh #download miniconda
bash Miniconda3-4.5.12-MacOSX-x86_64.sh -b -p miniconda #install miniconda
rm Miniconda3-4.5.12-MacOSX-x86_64.sh #cleanup

#Create environment
miniconda/bin/conda create --name rumenvar --file spec-file.txt

#sra 
wget https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/2.10.8/sratoolkit.2.10.8-mac64.tar.gz
tar -xzf sratoolkit.2.10.8-mac64.tar.gz
rm sratoolkit.2.10.8-mac64.tar.gz
