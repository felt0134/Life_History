

#running all scripts from source at once may take 10-20 minutes

# install packages
pkgs <- c("boot", "rstudioapi", "nls2", "mvtnorm")
lapply(pkgs, install.packages, character.only = TRUE)

rm(list=ls())

# Load libraries
library(rstudioapi)
library(nls2)
library(boot)
library(nls2)
library(mvtnorm)

current_path <- getActiveDocumentContext()$path
setwd(dirname(current_path))

# Load functions
source("model_functions.R")

# Look at empirical density dependence
source('empirical_look.R')

# Turn ESS into ecosystem sensitivity for Sonoran parameter set and save coefficients
source('ESS_to_Sensitivity.R')

# Turn ESS into ecosystem sensitivity for hypothetical parameter set and save coefficients

source('ESS_to_Sensitivity_Modeled.R')

# Create and Save Figures 

source("sonoran_sensitivity_plots.R")
source("modeled_sensitivity_plots.R")
