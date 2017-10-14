STAR --genomeDir ${index} \\
--sjdbGTFfile $gtf \\
--readFilesIn $reads \\
--runThreadN ${task.cpus} \\
--outFileNamePrefix '${sampleid}.' \\
--readFilesCommand gunzip -c \\
--outFilterType BySJout \\
--outSAMtype BAM SortedByCoordinate \\
--outWigType bedGraph \\
--twopassMode ${params.star_mapping.twopassMode} \\
--outFilterMultimapNmax ${params.star_mapping.outFilterMultimapNmax} \\
--outFilterMismatchNmax ${params.star_mapping.outFilterMismatchNmax} \\
--outFilterMismatchNoverLmax ${params.star_mapping.outFilterMismatchNoverLmax} \\
--alignIntronMin ${params.star_mapping.alignIntronMin} \\
--alignIntronMax ${params.star_mapping.alignIntronMax} \\
--alignMatesGapMax ${params.star_mapping.alignMatesGapMax} \\
--alignSJoverhangMin ${params.star_mapping.alignSJoverhangMin}