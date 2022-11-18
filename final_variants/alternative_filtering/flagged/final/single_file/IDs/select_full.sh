#!/bin/bash
#$ -cwd
#$ -j y
#$ -pe smp 1
#$ -l h_rt=70:0:0
#$ -l h_vmem=8G


module load bcftools

bcftools view  Qrobur_432_IDS.vcf.gz -s Y8,X38,B98,B62,B83,EB7,Y13,EC3,FA1,C51,Y33,EG2,X18,B92,EB12,FC2,C16,ED12,Y66,EE2,Y23,X56,B94,EE11,EC7,X39,X64,EB8,EC12,Y1,EG10,ED7,z_46,EA2,B68,EH3,Y67,EC2,B88,BB9,EF2,X12,BB7,C28,Y2,Y24,z_48,EA5,BD8,BH6,AE7,z_17,B95,aaa103,B23,z_84,z_72,aaa111,AD11,BD5,X3,AH9,GF1,AA8,AB8,AF3,C24,T4,z_115,aaa112,FE9,BA7,AF7,AG7,T9,C9,z_31,AF10,AD9,AH7,FB8,AC12,BE9,B49,AG9,AC10,z_123,FD2,B55,aaa16,z_34,AF11,AH11,z_119,AC4,X76,AA6,AB10,AE10,AE8,aaa67,Y55,z_102,C76,z_81,AH5,z_62,z_65,B66,BC10,BF3,AD12,z_78,EE1,C79,z_77,z_86,AG4,FF11,AB5,AD6,FG9,z_117,BG9,z_7,aaa98,AC7,aaa99,AG6,z_89,AD4,AE1,ED1,z_49,BG1,FG7,GF2,FF6,FC8,aaa94,AG5,C94,T14,B8,z_114,aaa88,EB1,B27,C15,z_22,AG11,FE11,AH6,z_93,AD8,FA11,z_121,AA3,AH4,BF9,BF6,B77,C66,EC1,EH10,AB12,AA11,AC11,AB1,AB2,X25,B57,AC2,AA5,T28,B93,z_33,C8,z_82,aaa96,z_110,AA9,z_104,z_106,z_66,FH7,z_118,BH5,B53,BD11,Y28,z_35,Y31,T29,z_108,FF8,AF6,z_73,BF5,T6,BC9,T7,B41,BC12,GD2,AA10,z_109,FD7,z_74,z_105,AF5,AG1,BA5,B71,ED3,z_51,C92,T15,FE7,FG6,AA2,AH1,BH11,Y5,C74,BB5,B96,BG11,Y36,FC12,aaa113,z_75,K1,FA2,FE8,BD6,C59,B48,z_37,z_92,AA1,B72,EC5,aaa25,AC6,AF1,z_107,AD10,GB1,BC5,B52,BE10,BA2,AD1,AD2,AF4,B84,BD10,Y7,EH6,ED5,EG4,C81,BF8,BA12,aaa18,BG4,T8,C91,z_97,B36,AH2,C65,B99,X71,Y14,BC11,EC10,BF1,BG5,Y29,X17,X51,FH1,AF12,BC8,T22,BH4,BD4,B89,B43,T34,B61,X49,Y6,C42,C83,C7,Y48,C45,C13,C35,T31,z_79,AD3,BD9,B91,BD12,B87,BF10,T2,FB7,BE12,Y80,Y27,EE10,X8,C93,C98,C27,BF7,BE11,X59,BA1,X7,C82,z_9,C12,BA4,C68,B75,EF4,B33,B44,C87,AH12,Y52,C95,Y30,X53,BD2,C14,C55,EF3,C5,BH10,C21,B34,BE2,EG6,C26,C3,BA8,z_26,BA11,EG5,B1,z_27,BB2,X15,C86,Y75,C11,B46,T13,B81,aaa8,EG1,BE4,T21,C4,X45,z_39,BC2,B67,C25,EA11,T1,C19,C69,BC1,C33,EC9,B64,C22,B97 -Oz -o full_set.vcf.gz