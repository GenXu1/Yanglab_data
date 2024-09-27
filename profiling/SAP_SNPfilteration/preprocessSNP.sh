#!/bin/bash

ml bcftools bedtools beagle tabix bedops vcftools

# $1 is the chormosome number for example Chr01 Chr02... Chr10

# get biallelic SNP and separate chromosome
bcftools view -m2 -M2 -v snps SAP.vcf.gz --regions $1 -Oz -o SAP$1.bisnp.vcf.gz
tabix SAP$1.bisnp.vcf.gz

# remove duplicate and missing>0.3, and reformat a bit for beagle
bcftools norm -d all SAP$1.bisnp.vcf.gz -Oz |\
   vcftools --gzvcf - --max-missing 0.7 --recode --stdout |\
   perl -pe "s/\s\.:/\t.\/.:/g" |\
   bgzip -c > SAP$1.missing.vcf.gz

# inmuptation
beagle -Xms5g -Xmx30g gt=SAP$1.missing.vcf.gz out=SAP$1.impute

# get heterozygosity per site
# a little hard coding for hetnumber
$hetnumber = expr(400 * 0.1)
paste <(bcftools view SAP$1.impute.vcf.gz |\
   awk -F"\t" 'BEGIN {print "CHR\tPOS\tID\tREF\tALT"} \
     !/^#/ {print $1"\t"$2"\t"$3"\t"$4"\t"$5}') \
 <(bcftools query -f '[\t%SAMPLE=%GT]\n' SAP$1.impute.vcf.gz |\
   awk 'BEGIN {print "nHet"} {print gsub(/0\|1|1\|0|0\/1|1\/0/, "")}') |\
   awk '{ if ($6 > $hetnumber) { print } }' | tail -n +2 > SAP$1.exclude

# filter maf and het, and give SNP name chr_pos
vcftools --gzvcf SAP$1.impute.vcf.gz --maf 0.05 --exclude-positions SAP$1.exclude --recode --stdout |\
   perl -lane 'if($F[0] !~ /^#/) {$F[2] = $F[0]."_".$F[1];print join("\t",@F);} else {print $_;}' |\
   bgzip -c > SAP$1.preprocess.vcf.gz 
tabix SAP$1.preprocess.vcf.gz
