#!/bin/sh

#DB='metacmpDB/GTDB/gtdb'
#$1, $2, $3, $4, $5=contig_file, out_dir, pathogen_name, mmseqs_db, nthreads

mmseqs createdb ${1} ${2}sample.contigs
mmseqs taxonomy ${2}sample.contigs ${4} ${2}sample.assignments ${2}sample.tmpFolder --threads ${5} --tax-lineage 1 --majority 0.7 --vote-mode 1 --lca-mode 3 --orf-filter 1
mmseqs createtsv ${2}sample.contigs ${2}sample.assignments ${2}${3}
#rm ${2}sample.contigs*
#rm ${2}sample.assignments*
#rm -r ${2}sample.tmpFolder
