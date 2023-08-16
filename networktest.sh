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
#SBATCH --job-name=Test
#SBATCH --output=Test.output


module load anaconda
source activate rdiou
module load cudatoolkit/11.2


cd /N/slate/ravin/Fall2024/Improved_3D_IOU/tools

python test.py --cfg_file ./cfgs/kitti_models/rdiou.yaml --ckpt kitti_rdiou86.62.pth


#CUDA_VISIBLE_DEVICES=0,1 bash scripts/dist_train.sh 2 --cfg_file ./cfgs/kitti_models/biprodet.yaml

#python test.py --eval_all --cfg_file ./cfgs/kitti_models/biprodet.yaml

#python setup.py develop

#python -m pcdet.datasets.kitti.kitti_dataset create_kitti_infos tools/cfgs/dataset_configs/kitti_dataset.yaml

#python train.py --cfg_file ./cfgs/kitti_models/biprodet.yaml

#CUDA_VISIBLE_DEVICES=0,1 bash scripts/dist_train.sh 4 --cfg_file ./cfgs/kitti_models/biprodet.ya

#sh dist_train.sh


