#!/bin/tcsh
#BSUB -n 1
#BSUB -x
#BSUB -R select[oc]
#BSUB -W 1:30 # Time depends on no. of runs aggregated
#BSUB -J check_PoPSGlobal
#BSUB -o errors_outputs/stdout.%J
#BSUB -e errors_outputs/stderr.%J
module load conda
conda activate /usr/local/usrapps/rkmeente/env_pandemic
python  hpc/run_checker.py
conda deactivate
