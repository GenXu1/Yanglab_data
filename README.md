[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0)

# Maize and Sorghum Omics Data Curation

We focus on population-wide omics datasets. By curating these existing datasets, we can ensure the development of robust computational models.

## Maize

### Genome annotation data

### Maize Association Panel (MAP, n=282 lines, aka 282 panel)

- Genotype: Whole genome sequencing (>10 M SNPs)
  - Raw sequencing data (Bukowski et al., 2018)
  - Row VCF file on HCC: `path?`
    - AGPV5 genome filtration MAF < 0.05 and MR > 0.6: `vcf` 
  - Randomly sampled 50k SNPs
    - GitHub Path: `data/01Genotype/282_agpv5_50.recode.vcf`
    - `data/01Genotype/282_agpv5_50k.txt`
- RNA-seq
  - RNA-seq in seven tissues: CyVerse (Kremling et al., 2018)
  - Root RNA-seq?
    - Raw data?
    - Process version?
- Microbiome
  - Under high N and low N conditions (n=230 gentoypes x 2 N x 2 reps) (Meier et al., 2022)
- Root exudates
  - Collected using GC-MS method? 
- Metabolomics
  - From seedling tissue with three replications (Z. Yang et al., 2022)
- Aboveground phenotypes
  - More than 50 traits BLUP values 
    - `data/03Phenotype/MAP/public_pheno_282_37traits.xlsx`
    - `data/03Phenotype/MAP/public_pheno_282_mineral_ziegler.xlxs`
  - Six ear-related traits under different N conditions
- Belowground Phenotypes
  - NA


### Backcrossed GEM (BGEM) DH lines (BGEM-DH, n=300 lines)

### Maize off-PVP lines (PVP, n=x lines)


### Chinese Elite Inbreds (CEI, n=500 lines)

## Sorghum

### Sorghum Association Panel (SAP, n=400 lines)

### Sorghum Carbon-Partitioning NAM (CP-NAM, n=2,500 RILs)



------------------------

# Project Guideline

- To guide group members having a better sense about the project layout, here we briefly introduce the specific purposes of the [dir system](https://jyanglab.github.io/2017-01-07-project/). The layout of dirs is based on the idea borrowed from [ProjectTemplate](http://projecttemplate.net/architecture.html).

- The guideline for the collaborative [workflow](https://jyanglab.github.io/2017-01-10-project-using-github/).

- Check out progress and things [to-do](TODO.md) and throw ideas via the wiki page.


## License
This is an ongoing research project. It was intended for internal lab usage. It has not been extensively tested. Use at your own risk.
It is a free and open source software, licensed under [GPLv3](LICENSE).
