#Add downloading channels
conda config --add channels defaults
conda config --add channels conda-forge
conda config --add channels bioconda
#Add mirror site
site=https://mirrors.tuna.tsinghua.edu.cn/anaconda
conda config --add channels ${site}/pkgs/free/ 
conda config --add channels ${site}/pkgs/main/
conda config --add channels ${site}/cloud/conda-forge/
conda config --add channels ${site}/pkgs/r/
conda config --add channels ${site}/cloud/bioconda/
conda config --add channels ${site}/cloud/msys2/
conda config --add channels ${site}/cloud/menpo/
conda config --add channels ${site}/cloud/pytorch/
#Upgrade conda
#conda update conda
#Install tools for conda
conda install -y wget
