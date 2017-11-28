## As a general rule, we want the working directory to be the directory containing the command file.

## This next is fast so it doesn't hurt to set it even if it is already set by virtue of the way that we are using R (i.e. if you start R at the command line in this directory, it will have the correct working directory set).

### First create a local library directory so that we do not mess with global R packages (especially important if we do not have permission, also polite)
dir.create("libs", showWarnings = FALSE)
.libPaths("libs")
firstpkgs <- c("here","devtools")
pkgs <- installed.packages(lib.loc="libs")

toinstallfirst <- firstpkgs[!(firstpkgs %in% pkgs[,"Package"])]
if(length(toinstallfirst)>0){
  install.packages(toinstallfirst)
}

library(here)
thisdir <- here("Analysis")
setwd(thisdir)

## Devtools install_github will only reinstall RItools if something changes on github
library(devtools)
## We are using the development branch of RItools for cluster and stratification options.
install_github("markmfredrickson/RItools",lib="libs")
library(RItools)

secondpkgs <- c("stringr", "ggplot2", "dplyr", "clubSandwich", "lmtest", "sandwich", "knitr","tidyr","broom","coin","readstata13","scales","readxl","vcd")

toinstallsecond <- secondpkgs[!(secondpkgs %in% pkgs[,"Package"])]
if(length(toinstallsecond)>0){
  install.packages(toinstallsecond)
}

## load the second set of packages
for(nm in secondpkgs){
  message("Loading package ",nm,sep="")
  require(nm,character.only = TRUE)
}

opts_chunk$set(strip.white=TRUE,
               width.cutoff=132,
               size='\\scriptsize',
               out.width='.8\\textwidth',
               message=FALSE,
               comment=NA)

options(digits=4,scipen=10)
