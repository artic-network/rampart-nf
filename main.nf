process rampart {

  container "${params.wf.container}"
  
  publishDir "${params.out_dir}", mode: 'copy'

  input:
    path protocol
    path fastq_ch
    path barcodes_ch

  output:
    path annotations

  script:
    extra = ""
    if ( params.barcodes_csv )
        extra += " --barcode ${barcodes_ch}"
    if ( params.extra_flags )
        extra += " ${params.extra_flags}"
    """
    rampart --protocol ${protocol} --basecalledPath ${fastq_ch}  --clearAnnotated ${extra}
    """
}

workflow {
  fastq_ch = channel.fromPath("${params.fastq}", checkIfExists:true)
  protocol_ch = channel.fromPath("${projectDir}/protocols/${params.protocol}", checkIfExists:true)
  if (params.barcodes_csv)
    barcodes_ch = channel.fromPath("${params.barcodes_csv}", checkIfExists:true)
  else
    barcodes_ch = channel.fromPath("${projectDir}/${params.default_barcodes_csv}", checkIfExists:true)

  
  rampart(protocol_ch, fastq_ch, barcodes_ch)
}
