#Step1 Download Qiime2
wget https://data.qiime2.org/distro/core/qiime2-2019.7-py36-linux-conda.yml
#Step2 Set environmenta and install Qiime2
conda env create -n qiime2-2019.10 --file qiime2-2019.7-py36-linux-conda.yml
#Step3 Remove installer
rm qiime2-2019.7-py36-linux-conda.yml
#Step4 Check environment
conda info --envs
#Step5 Active environment
conda activate qiime2-2019.10
#Step6 Deactive environment
conda deactivate
#Step7 Remove Qiime2
conda env remove -n qiime2-2019.10
conda clean -y --all
#other install software to an specific environment
conda install -n qiime2 R=3.6.1
