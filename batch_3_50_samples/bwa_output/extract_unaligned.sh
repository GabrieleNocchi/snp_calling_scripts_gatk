#!/bin/bash
#$ -cwd
#$ -j y
#$ -pe smp 1
#$ -l h_vmem=1G
#$ -l h_rt=240:0:0
#$ -t 1-184


INPUT=$(sed -n "${SGE_TASK_ID}p" list1.txt)
OUTPUT=$(sed -n "${SGE_TASK_ID}p" list2.txt)

# Load the application module
module load samtools/1.9

samtools fastq -f 12 -1 /data/SBCS-BuggsLab/GabrieleNocchi/Oak/batch_3_50_samples/metagenomics/$OUTPUT\.1.fq.gz -2 /data/SBCS-BuggsLab/GabrieleNocchi/Oak/batch_3_50_samples/metagenomics/$OUTPUT\.2.fq.gz $INPUT


# Generated by Job Script Builder on 2018-11-27
# For assistance, please email its-research-support@qmul.ac.uk
