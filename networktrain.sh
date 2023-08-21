#!/bin/bash
#####  Constructed by HPC everywhere #####
#SBATCH -A r00063
#SBATCH --mail-user=ravin@iu.edu
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --time=0-6:0:00
#SBATCH --mem=128gb
#SBATCH --partition=gpu
#SBATCH --gpus v100:1
#SBATCH --job-name=Train
#SBATCH --output=Train.output


module load anaconda
source activate rdiou
module load cudatoolkit/11.2


cd /N/slate/ravin/Fall2024/Improved_3D_IOU/tools

python train.py --cfg_file ./cfgs/kitti_models/rdiou.yaml
