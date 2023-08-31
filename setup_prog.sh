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


