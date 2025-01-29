# Multi-Level Branch Predictor

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Languages](https://img.shields.io/github/languages/top/CMPT-450-GROUP/Multi-Level-Branch-Predictor)

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Usage](#usage)
  - [Building Predictors](#building-predictors)
  - [Running Experiments](#running-experiments)
  - [Configuration](#configuration)
- [Implementation Details](#implementation-details)
- [Benchmarking Results](#benchmarking-results)
- [Resources](#resources)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Overview

The **Multi-Level Branch Predictor** project implements the MGAg and MGAs multiple branch predictors to enhance the Instruction Fetch Rate within the ChampSim simulator. By leveraging multi-level adaptive branch prediction techniques, this project aims to outperform traditional single-level bimodal branch predictors in terms of accuracy and Instructions Per Cycle (IPC).

## Features

- **MGAg Predictor**: Utilizes a Global Pattern History Table (GHT) with a single Pattern History Table (PHT).
- **MGAs Predictor**: Employs multiple Pattern History Tables (PHTs) indexed via a hashing function for improved accuracy.
- **Customizable Prediction Levels**: Modify the number of prediction levels to analyze performance impacts.
- **Benchmarking Suite**: Comprehensive benchmarking against single-level predictors to evaluate performance gains.

## Usage

### Building Predictors

To generate binary files for the desired predictor, execute the corresponding shell script:

- **MGAg Predictor**
  ```bash
  ./buildMGAg.sh

    MGAs Predictor

    ./buildMGAs.sh
  ```
- **Running Experiments**

Submit batch jobs to run experiments and generate output files:

-- **MGAg Predictor**
    ```bash
    sbatch runMGAg.sh
    ```
-- **MGAs Predictor**
    ```bash
    sbatch runMGAs.sh
    ```
## Configuration

To adjust the levels of prediction, modify the LEVELS_TO_PREDICT macro in the ooo_cpu.h header file:

    ```bash
    #define LEVELS_TO_PREDICT <desired_number_of_levels>
    ```
## Implementation Details

The project extends the ChampSim simulator to support multi-level branch prediction by:

Modifying Instruction Fetching: Alters read_from_trace() to fetch multiple instruction blocks per cycle based on LEVELS_TO_PREDICT.
Implementing MGAg: Uses a single Global Pattern History Table (GHT) indexed by varying bits of the Global History Register (GHR) for different prediction levels.
Implementing MGAs: Introduces multiple PHTs selected via a hash function to reduce aliasing and improve prediction accuracy.
Handling Mispredictions: Updates the trace file pointer and applies cycle penalties upon mispredictions to maintain simulation integrity.

## Benchmarking Results

Our implementation demonstrates that multi-level branch predictors significantly enhance IPC and prediction accuracy compared to single-level bimodal predictors. Key findings include:

IPC Improvement: Increased prediction levels correlate with higher IPC, especially with larger GHR sizes.
Accuracy Enhancement: MGAg and MGAs show superior accuracy, with MGAs outperforming MGAg due to reduced aliasing.
Scalability: Maintaining a constant hardware cost (16,384 bits) while varying GHR sizes and PHT counts provides insights into optimal configurations.

For detailed benchmarking results and graphs, refer to the Project Report.

## Resources
    Research Paper: Increasing the Instruction Fetch Rate via Multiple Branch Prediction and a Branch Address Cache by Tse-Yu Yeh, Deborah T. Marr, Yale N. Patt (1993).
    Project Report: Multi-Level Branch Predictor ReportFor detailed benchmarking results and graphs, refer to the Project Report.
