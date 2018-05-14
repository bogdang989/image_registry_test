class: CommandLineTool
cwlVersion: v1.0
$namespaces:
  sbg: 'https://www.sevenbridges.com'
id: echo
baseCommand:
  - echo
inputs:
  - id: input
    type: string
    inputBinding:
      position: 0
outputs:
  - id: output
    type: File?
    outputBinding:
      glob: stdout
label: echo
requirements:
  - class: DockerRequirement
    dockerPull: 'images.sbgenomics.com/bogdang/alpine:1.0'
stdout: stdout
