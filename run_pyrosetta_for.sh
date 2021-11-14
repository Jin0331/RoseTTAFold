#!/bin/bash

dir=/home/run/input/CASP14/fasta/
file_list=$(find ${dir} -maxdepth 1 -type f -exec basename "{}" \; | cut -d'.' -f1 | sort -u)

echo $file_list
for file_name in $file_list
do
    echo $file_name
    run_pyrosetta_ver.sh ${dir}/${file_name}.fasta ./${file_name}
done