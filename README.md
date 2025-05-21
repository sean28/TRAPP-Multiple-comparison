# TRAPP-Multiple-comparison
<div style="text-align: justify"> TRAnsient Pockets in Proteins (TRAPP) is a tool that allows the exploration of different protein conformations, the analysis of binding pocket flexibility and dynamics, and the extraction of spatial and physicochemical information on the binding pocket confor-mations (J Chem Inf Model. 2020 Mar 23;60(3):1685-1699). Through this <a href="https://trapp.h-its.org/trapp">link</a>, you can learn and use the TRAPP webserver online.</div>
<div style="text-align: justify"> <br> </div>
<div style="text-align: justify"> The analysis chart derived from TRAPP only shows the scoring of one system, and cannot compare multiple groups of systems. Now we have developed an extended tool to realize the comparative analysis of multiple systems. This program need to extract data from the TRAPP analysis results, and then use this script for analysis. Now we only provide two groups of system comparative analysis tools. </div>
![This is an image](/sample.png)
<div style="text-align: justify"> This tool is now open source and you can refer to it from <a href="https://github.com/sean28/TRAPP-Multiple-comparison.git">here</a>. Download this tool from this <a href="https://github.com/sean28/TRAPP-Multiple-comparison/archive/refs/heads/main.zip">link</a>. If you need to use it, please indicate the source. Articles using this tool have been published, please refer to this link (https://pubmed.ncbi.nlm.nih.gov/36232570/).</div>
<div style="text-align: justify"> <br> </div>



## Environment deployment
<div style="text-align: justify">First, your environment needs to install the following expansion packs in advance to meet the use of subsequent scripts:</div>
<div style="text-align: justify"> <br> </div>
R version 4.0.5 (Include package "ggplot2")
<div style="text-align: justify"> <br> </div>
Python 3.8.13   (Include Image Library "PIL")
<div style="text-align: justify"> <br> </div>
Note: Other versions may not be applicable!

## Usage
1. Extract the pocket_size_summ.dat from TRAPPOutput.zip, and exported to csv file in triad-nma.csv format
2. Run run.sh

## Download the complete script zip
Click <a href="https://github.com/sean28/TRAPP-Multiple-comparison/archive/refs/heads/main.zip">here</a>.


