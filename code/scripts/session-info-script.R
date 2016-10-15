#Listing all the library calls to the packages used
sink('session-info.txt')
print('Relevant packages:')
library(base)
'base'
library(testthat)
'test-that'
library(grDevices)
'grDevices'
library(graphics)
'graphics'
library(stats)
'stats'
print('R Session Information')
sessionInfo()
sink()