# README
## What is the ESMValTool?

The Earth System Model eValuation Tool (ESMValTool) is a community diagnostics and performance metrics tool for the evaluation of Earth System Models (ESMs) that allows for routine comparison of single or multiple models, either against predecessor versions or against observations. The priority of the effort so far has been to target specific scientific themes focusing on selected Essential Climate Variables, a range of known systematic biases common to ESMs, such as coupled tropical climate variability, monsoons, Southern Ocean processes, continental dry biases and soil hydrology-climate interactions, as well as atmospheric CO2 budgets, tropospheric and stratospheric ozone, and tropospheric aerosols. The tool is being developed in such a way that additional analyses can easily be added. A set of standard namelists for each scientific topic reproduces specific sets of diagnostics or performance metrics that have demonstrated their importance in ESM evaluation in the peer-reviewed literature. The ESMValTool is a community effort open to both users and developers encouraging open exchange of diagnostic source code and evaluation results from the CMIP ensemble. This will facilitate and improve ESM evaluation beyond the state-of-the-art and aims at supporting such activities within the Coupled Model Intercomparison Project (CMIP) and at individual modeling centers. Ultimately, we envisage running the ESMValTool alongside the Earth System Grid Federation (ESGF) as part of a more routine evaluation of CMIP model simulations while utilizing observations available in standard formats (obs4MIPs) or provided by the user. 

## Main Features

   +  Facilitates the complex evaluation of ESMs and their simulations submitted to international Model Intercomparison Projects (e.g., CMIP).
   +  Standardized model evaluation can be performed against observations, against other models or to compare different versions of the same model.
   +  Wide scope: includes many diagnostics and performance metrics covering different aspects of the Earth System (dynamics, radiation, clouds, carbon cycle, chemistry, aerosol, sea-ice, etc.) and their interactions.
   +  Well-established analysis: standard namelists reproduce specific sets of diagnostics or performance metrics that have demonstrated their importance in ESM evaluation in the peer-reviewed literature.
   +  Broad documentation: user guide (Eyring et al., 2015); SPHINX; a log-file is written containing all the information of a specific call of the main script: creation date of running the script, version number, analyzed data (models and observations), applied diagnostics and variables, and corresponding references. This helps to increase the traceability and reproducibility of the results.
   +  High flexibility: new diagnostics and more observational data can be easily added.
   +  Multi-language support: Python, NCL, R... other open-source languages are possible.
   +  CF/CMOR compliant: data from many different projects can be handled (CMIP, obs4mips, ana4mips, CCMI, CCMVal, AEROCOM, etc.). Routines are provided to CMOR-ize non-compliant data.
   +  Integration in modeling workflows: for EMAC, NOAA-GFDL and NEMO, can be easily extended.

## Participating Institutes

  + Deutsches Zentrum für Luft- und Raumfahrt (DLR), Institut für Physik der Atmosphäre, Oberpfaffenhofen, Germany
  + Swedish Meteorological and Hydrological Institute (SMHI), 60176 Norrköping, Sweden.
  + University of Leeds, Leeds, UK
  + Met Office Hadley Centre, Exeter, UK
  + University of Exeter, Exeter, UK
  + Tyndall Centre for Climate Change Research, School of Environmental Sciences, University of East Anglia, Norwich, UK
  + Agenzia nazionale per le nuove tecnologie, l'energia e lo sviluppo economico sostenibile (ENEA), Rome, Italy
  + ETH Zurich, Switzerland
  + National Center for Atmospheric Research (NCAR), Boulder, USA
  + Deutsches Klimarechenzentrum, Hamburg, Germany
  + Max-Planck-Institute for Meteorology, Hamburg, Germany
  + National Centre for Atmospheric Science, British Atmospheric Data Centre, STFC Rutherford Appleton Laboratory, United Kingdom
  + Geophysical Fluid Dynamics Laboratory/NOAA, Princeton, NJ, USA
  + Ludwig Maximilian University, Munich, Germany
  + Finnish Meteorological Institute, Finland
  + Engility Corporation, Chantilly, VA, USA
  + University of Reading, Reading, UK
  + Institut Pierre Simon Laplace, Paris, France
  + CNRM-GAME, Météo France and CNRS, Toulouse, France
  + Royal Netherlands Meteorological Institute (KNMI), De Bilt, The Netherlands

## Prerequisites*

The ESMValTool has the following software requirements (note that specific diagnostics might require additional software packages):

  + Unix(-like) operating system
  + Python version 2.7.x; some diagnostics written in Python (e.g.,the diagnostic "TropicalVariability") require installation of additional Python packages such as the Geometry Engine(GEOS), scientificpython, netCDF4, and cdo, e.g.:

    +    conda install basemap
    +    conda install --channel https://conda.anaconda.org/Clyde_Fare scientificpython
    +    conda install netcdf4
    +    conda install --channel https://conda.anaconda.org/auto cdo

    It is strongly recommended to use the Python distribution Anaconda, as it allows the user to install additional Python libraries and extensions in a simple way and without modifying the installed Python distribution (i.e., without root permissions).

  + NCAR Command Language (NCL 2014) version 6.2 or higher
  + Diagnostics written in R require a working installation of the statistical computing software R and that the executable Rscript is in the default search path. In addition, the netCDF libraries (ncdf / ncdf4) for R are needed. Currently, only the diagnostic “Standardized Precipitation index (SPI)” requires R. More diagnostics written in R might be added in the future.
  + Common GNU utilities such as “wc”, “date”, “basename”, and “more”, which are usually part of the standard Linux distribution

## Software installation

The tar-ball can be unpacked with the standard tar command, e.g.,

tar -xvf ESMValTool_v1.0.tar

## User Guide

A comprehensive user guide is available at here: [User Guide](https://www.esmvaltool.org/download/ESMValTool_Users_Guide.pdf)

## Publication

The software design of the  ESMValTool and the technical implementation is presented in detail in the Open Access Article: 

[Eyring et al., ESMValTool (v1.0) - A community diagnostic and performance metrics tool for routine benchmarking and process evaluation of Earth System Models in CMIP, Geosci. Model Dev., 2016.](http://dx.doi.org/10.5194/gmd-9-1747-2016)

