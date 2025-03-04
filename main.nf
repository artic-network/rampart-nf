process rampart {

  container "${params.wf.container}:${workflow.manifest.version}"
  
  publishDir "${params.out_dir}", mode: 'copy'

  input:
    path protocol
    path fastq_ch

  output:

  script:
    extra = ""
    if ( params.extra_flags )
            extra += " ${params.extra_flags}"
    """
    rampart --protocol ${protocol} --basecalledPath ${fastq_ch}  --clearAnnotated ${extra}
    """
}

workflow {
  fastq_ch = channel.fromPath("${params.fastq}", checkIfExists:true)
  protocol_ch = channel.fromPath("${projectDir}/protocols/${params.protocol}", checkIfExists:true)

  
  rampart(protocol_ch, fastq_ch)
}
