#!/bin/bash
#####  Constructed by HPC everywhere #####
#SBATCH -A r00063
#SBATCH --mail-user=ravin@iu.edu
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --time=0-1:0:00
#SBATCH --mem=64gb
#SBATCH --partition=gpu
#SBATCH --gpus v100:1
#SBATCH --job-name=SetupLog
#SBATCH --output=SetupLog.output


module load anaconda
source activate py42
module load cudatoolkit/11.0


cd /N/slate/ravin/Fall2024/testenv3

python3 setup.py develop

"""
conda create --name py42 python=3.9 
conda install pytorch==1.7.1 torchvision==0.8.2 torchaudio==0.7.2 cudatoolkit=11.0 -c pytorch
pip install SharedArray==3.2.2
pip install timm
pip install scipy==1.11.1
pip install scikit-image
pip install spconv-cu111
pip install tqdm 
pip install numba==0.57.1
"""
