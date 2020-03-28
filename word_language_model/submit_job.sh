#!/usr/bin/env bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --time=5:00:00
#SBATCH --gres=gpu:p40:1
#SBATCH --mem=14000
#SBATCH --job-name=train_resnet_on_cifar
#SBATCH --mail-type=END
#SBATCH --mail-user=ab8700@nyu.edu
#SBATCH --output=slurm_%j.out

python main.py --cuda --tied --epochs 2