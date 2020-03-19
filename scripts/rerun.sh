#!/bin/bash
#
# Re-run the code locally, to re-create the data and figure.
#
# Usage:
#
#   ./scripts/rerun.sh
#
#SBATCH --partition=gelifes
#SBATCH --time=10:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH --job-name=pirex18
#SBATCH --output=example_18.log
#
rm -rf example_18
rm *.png
time Rscript example_18.R
zip -r pirouette_example_18.zip example_18 example_18.R scripts *.png

