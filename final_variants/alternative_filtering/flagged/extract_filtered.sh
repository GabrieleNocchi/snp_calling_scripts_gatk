#!/bin/bash
#$ -cwd
#$ -j y
#$ -pe smp 1
#$ -l h_vmem=4G
#$ -l h_rt=24:0:0
#$ -t 1-13

CHROM=$(sed -n "${SGE_TASK_ID}p" ./vcf.txt)
NAME=$(sed -n "${SGE_TASK_ID}p" ./vcf_names.txt)

# Load the application module
module load gatk/4.0.8.1

gatk SelectVariants -R /data/SBCS-BuggsLab/GabrieleNocchi/haplotypecaller_ref/Qrob_PM1N.fa -V $CHROM --exclude-filtered -O ./final/$NAME\_final.vcf

rm $CHROM
# Generated by Job Script Builder on 2018-11-05
# For assistance, please email its-research-support@qmul.ac.uk

