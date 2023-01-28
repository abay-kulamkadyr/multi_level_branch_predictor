# Multiple Branch Predictor  
This project implements MGAg and MGAs multiple branch predictors to increase the Instruction Fetch Rate in the ChampSim simulator. 

## Usage
### To generate binary files for the MGAg predictor run the following shell script:
  ***./buildMGAg.sh***

### To generate binary files for the MGAs predictor run the following shell script:
  ***./buildMGAs.sh***

### To run the experiments and generate output files for MGAg submit the batch job as follows:
  ***sbatch runMGAg.sh***

### To run the experiments and generate output files for MGAs submit the batch job as follows:
  ***sbatch runMGAs.sh***

### To change the levels of predictions, change the LEVELS_TO_PREDICT hash define in the ***ooo_cpu.h*** header file. 


## Resources 

This project is an implementation of the following paper: 
https://hps.ece.utexas.edu/pub/yeh_ics7.pdf
