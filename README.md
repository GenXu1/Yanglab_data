[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0)

# Maize and Sorghum Omics Data Curation

We focus on population-wide omics datasets. By curating these existing datasets, we can ensure the development of robust computational models.

- We moved [maize data here](maize.md)

-----------------------
# Sorghum Association Panel (SAP, n=400 lines)

## Genomics

#### Raw sequence data
  - label corrected fq files `HCC: /work/jyanglab/SAP_raw_fq/`   

#### Genotype on V4
  - Whole genome resequencing (WGS) data ([Boatwright et al., 2022](https://onlinelibrary.wiley.com/doi/full/10.1111/tpj.15853))
    - 44 milion variants including 38 million SNPs, 5 million indels and 0.17 million CNVs
    - Filteration: biallelic SNP, minor allele frequency (maf) > 0.05, missing data < 0.3, ite heterozygosity < 0.1
    - Raw and filtered data on HCC Path `HCC: /common/schnablelab/hongyujin/SAPsnp/SNPallchrs/`
      - see filteration details: `profiling/SAP_SNPfilteration/preprocessSNP.sh`
  - Tunable genotyping by sequencing (tGBS) ~350 lines ([Miao et al., 2020](https://academic.oup.com/plphys/article/183/4/1898/6118529))
    - Data on [Figshare](https://figshare.com/articles/dataset/Untitled_Item/11462469) 

#### Sorghum SNP Calling on V5:

- Raw input data (`trimmed fastq`) were copied from Hongyu: `/work/jyanglab/subhash/variant_calling/1.trimmed_data/`
- Data folders: `/work/jyanglab/subhash/variant_calling`
- Code: `profiling/1.variant_calling/`

- Important files: 
  - reference genome: `/work/jyanglab/subhash/variant_calling/2.refrence/Phytozome/PhytozomeV13/Sbicolor/v5.1/assembly/Sbicolor_730_v5.0.fa`
  - Deduplicated BAM files: `/work/jyanglab/subhash/variant_calling/4.picard/` (n: 400 bam files)
  - gVCF file: `/work/jyanglab/subhash/variant_calling/5.gvcf/*.g.vcf`
  - Raw VCF file: `/work/jyanglab/subhash/variant_calling/9.gvcf_to_vcf/3.merged_vcf/RAW_SAP_BQSR.vcf.gz` (116G)
  - A filtered VCF file: `/work/jyanglab/subhash/variant_calling/9.gvcf_to_vcf/4.filtering/1.annotate/SAP_V5_annotate.vcf` (289G)

- Label correction:
  - 22 genotypes showed mismatched labels between SNPs called from genomic and RNAseq datasets `data/xlabels.xlsx`

## RNA-seq
  - Files with RNA-Seq-based markers called through GATK and gene expression normalized as Transcripts per million (TPM) are deposited at [OneDrive](https://uofnelincoln-my.sharepoint.com/:f:/g/personal/gxu6_unl_edu/EuJn6RPpm-FKuU9FKNs9Qg8Bpk_r52zMLq8WbqxNDgeqSQ?e=t9G35u).
  - Measurements of plant traits and tissue samples for gene expression were collected from a field experiment conducted at the University of Nebraska-Lincoln Havelock Research Farm in Lincoln, NE (40.859, -96.597) in 2021. 
The field consisted of a total of 1,936 plots split into two blocks of 968 plots.
Each block included single entries of 915 genotypes, four extra replications of TX430, and 51 plots of BTx623 as a replicated check. Each plot consistent of a 5 foot rows of plants, 2.5 alleyways, target spacing of 3 inches between plants, 
and 30 inch (approximately 0.75 meter) spacing between parallel and sequential rows. The field was treated with anhydrous ammonia fertilizer at a target rate of rate of 80 pounds of N per acre (approximately 89 kilograms per hectare). Planting occurred on May 25th, 2021.
- Leaf tissue samples were collected on August 5th, 2021, with sampling beginning at 10:00am and ending at 12:00noon. For each plot, a single representative plant was selected for sampling, avoiding edge plants where possible. Samples were collected from the fourth leaf, counting downwards from the uppermost fully expanded leaf, or the flag leaf, if present. Leaf tissue samples were immediately flash frozen in liquid nitrogen and then transferred to dry ice for transport. Leaf tissue samples were continuously stored either in -80 freezers or on dry ice until RNA extraction commenced. 

## Phenotype

### In field agronomic traits
    - github path `data/03Phenotype/SAP/`

#### 2020 SAP Schnable lab (Sorghum Asscoiation panel):
The 2020 field experiment was planted on June 8. Experimental plot consisted of one 1.52-m row of plants from a single genotype planted with a spacing of 0.76 m between parallel and sequential rows and approximately 7.62 cm in spacing between sequential plants in the same row. No supplemental nitrogen was applied to low-nitrogen treatment blocks, and a target of 80 pounds of N per acre (89.7 kilograms/hectare) was applied to sufficient nitrogen blocks. The 2020 experiment was conducted in a field located at N&deg;40.861, W&deg;96.598. The 2020 experiment consisted of 347 genotypes drawn from the sorghum association panel plus Tx430. A total of four blocks were planted, each consisting of 390 plots with one entry per genotype, plus BTx623 as a repeated check. Two blocks were grown under HN treatment and two under LN treatment.

#### 2021 SbDiv Schnable lab (Sorghum Diversity Panel)
The 2021 field experiment was planted on May 25. Experimental plot consisted of one 1.52-m row of plants from a single genotype planted with a spacing of 0.76 m between parallel and sequential rows and approximately 7.62 cm in spacing between sequential plants in the same row. No supplemental nitrogen was applied to low-nitrogen treatment blocks, and a target of 80 pounds of N per acre (89.7 kilograms/hectare) was applied to sufficient nitrogen blocks. The 2021 experiment was conducted in a field located at N&deg;40.858, W&deg;96.596. The 2021 experiment consisted of 347 genotypes replicated in two blocks, each consisting of 390 plots including the replicated check, under LN conditions as in 2020 and 911 sorghum genotypes in two blocks, each consisting of 966 plots including the replicated check under HN. The larger population in HN treatment resulted from the inclusion of sorghum genotypes from the sorghum diversity panel in addition to the previously characterized sorghum association panel (SAP) lines.

#### 2022 SAP AAMU
Experimental setup and field management. To setup the N-response SAP trial at AAMU, we performed site selection based on base N level and homogeneity (2021 Nov), field preparation (2022 April and May), sorghum planting (May 31 to Jun 2, 2022), and N treatment deployment (80 lbs per acre; Jun 26, 2022) after plant stand establishment. We have identified a few challenges, out of which weed pressure is the major challenge for sorghum in our location. We applied a combination of post-emergence herbicide (Jun 21, with 48 oz/acre atrazine), manual weeding (with hoes), and mechanical weeding (with 20-in mower and tiller) to combat the weed pressure. Manual and mechanical weeding were performed on a regular basis when weather and field conditions allowed. Overall, we had good control with morning glories, had slight amaranth issue in some spots, and experienced issues with sida wireweed especially for the short entries (not able to outcompete weeds) during the late growth stage. (Lesson: a well-prepared field, an early intervention, and a team effort are needed.) 

#### 2023 SAP Yang Lab
- Chlorophyll (by Luyang Zhang)

#### 2024 SAP Yang Lab (on-going)


#### Greenhouse seedling phenotype
    - 346 lines HN and LH
      - Leaf number, plant height, root and shoot fresh weight, photosynthesis traits (LICOR-600), chorophyll (large missing rate)

- Panicle phenotype
    - Kyle Linders thesis?
    - Nathan


 


### Sorghum Carbon-Partitioning NAM (CP-NAM, n=2,500 RILs)



------------------------

# Project Guideline

- To guide group members having a better sense about the project layout, here we briefly introduce the specific purposes of the [dir system](https://jyanglab.github.io/2017-01-07-project/). The layout of dirs is based on the idea borrowed from [ProjectTemplate](http://projecttemplate.net/architecture.html).

- The guideline for the collaborative [workflow](https://jyanglab.github.io/2017-01-10-project-using-github/).

- Check out progress and things [to-do](TODO.md) and throw ideas via the wiki page.


## License
This is an ongoing research project. It was intended for internal lab usage. It has not been extensively tested. Use at your own risk.
It is a free and open source software, licensed under [GPLv3](LICENSE).
