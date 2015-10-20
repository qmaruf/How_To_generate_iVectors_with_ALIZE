a#!/bin/bash

# Launch this bash script in order to run i-vector extraction
#
# world.gmm is a 256-distribution GMM


##############################
#	TotalVariability
##############################

#Compute Baum-Welch Statistics
./bin/ComputeJFAStats --config ./cfg/ComputeTVstats.cfg --verboseLevel 1

#Compute the TotalVariability Matrix
./bin/TotalVariability --config ./cfg/TotalVariability.cfg --verboseLevel 1


##############################
#	Train Target models (extract i-vectors)
##############################
#Compute Baum-Welch Statistics for test segments
 ./bin/ComputeJFAStats --config ./cfg/Compute_Target_stats.cfg --verboseLevel 10

# Extract i-vectors given the statistics
./bin/TrainTarget --config ./cfg/TrainTarget_iv.cfg --verboseLevel 1




