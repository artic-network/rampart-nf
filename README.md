![logo-banner-website](https://github.com/user-attachments/assets/92577b6c-d1b4-4364-888c-6dfb459177ed)
# Artic Network RAMPART real-time nanopore analysis


Run the ARTIC RAMPART real-time nanopore analysis application from within Epi2Me or NextFlow

Open a browser to [http://localhost:3000](http://localhost:3000) to view the RAMPART interface.

## Introduction

The [rampart-nf workflow](https://github.com/artic-network/rampart-nf) implements simple NextFlow workflow to start the RAMPART real-time
sequencing analysis platform. This allows it to be run using the ONT Epi2Me workflow application
from desktop application rather than the command line.


## Install and run

This workflow is intended to be run using the
[EPI2ME Desktop application](https://labs.epi2me.io/downloads/) by Oxford Nanopore Technologies. 
Install by selecting `> Launch` -> `Install workflow` -> `Import from Github` and provide the link to this Github repository: 

```https://github.com/artic-network/rampart-nf```

Do not include a `/` or other folder names at the end of the URL or it may not install.

## Credits / Acknowledgements

This pipeline was developed by Rachel Colquhoun.
The ARTIC RAMPART application was developed by James Hadfield, Andrew Rambaut, Áine O'Toole, Rachel Colquhoun.
The RAMPART Docker container was developed by Emily Scher, Corey Ainsley and Danny Maloney.

