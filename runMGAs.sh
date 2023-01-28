#!/bin/sh


#SBATCH --ntasks=8
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1GB
#SBATCH --time=50:00

# Link to spec 2017 traces
export TRACE_DIR=/data/dpc3_traces/
# Execute job steps
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_11_PTC_8-no-no-no-no-lru-1core" "10" "50" "600.perlbench_s-210B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_11_PTC_8-no-no-no-no-lru-1core" "10" "50" "602.gcc_s-734B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_11_PTC_8-no-no-no-no-lru-1core" "10" "50" "625.x264_s-18B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_11_PTC_8-no-no-no-no-lru-1core" "10" "50" "641.leela_s-800B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_11_PTC_8-no-no-no-no-lru-1core" "10" "50" "648.exchange2_s-1699B.champsimtrace.xz" &

srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_14_PTC_1-no-no-no-no-lru-1core" "10" "50" "600.perlbench_s-210B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_14_PTC_1-no-no-no-no-lru-1core" "10" "50" "602.gcc_s-734B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_14_PTC_1-no-no-no-no-lru-1core" "10" "50" "625.x264_s-18B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_14_PTC_1-no-no-no-no-lru-1core" "10" "50" "641.leela_s-800B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_14_PTC_1-no-no-no-no-lru-1core" "10" "50" "648.exchange2_s-1699B.champsimtrace.xz" &

srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_13_PTC_2-no-no-no-no-lru-1core" "10" "50" "600.perlbench_s-210B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_13_PTC_2-no-no-no-no-lru-1core" "10" "50" "602.gcc_s-734B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_13_PTC_2-no-no-no-no-lru-1core" "10" "50" "625.x264_s-18B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_13_PTC_2-no-no-no-no-lru-1core" "10" "50" "641.leela_s-800B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_13_PTC_2-no-no-no-no-lru-1core" "10" "50" "648.exchange2_s-1699B.champsimtrace.xz" &

srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_12_PTC_4-no-no-no-no-lru-1core" "10" "50" "600.perlbench_s-210B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_12_PTC_4-no-no-no-no-lru-1core" "10" "50" "602.gcc_s-734B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_12_PTC_4-no-no-no-no-lru-1core" "10" "50" "625.x264_s-18B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_12_PTC_4-no-no-no-no-lru-1core" "10" "50" "641.leela_s-800B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_12_PTC_4-no-no-no-no-lru-1core" "10" "50" "648.exchange2_s-1699B.champsimtrace.xz" &

srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_10_PTC_16-no-no-no-no-lru-1core" "10" "50" "600.perlbench_s-210B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_10_PTC_16-no-no-no-no-lru-1core" "10" "50" "602.gcc_s-734B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_10_PTC_16-no-no-no-no-lru-1core" "10" "50" "625.x264_s-18B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_10_PTC_16-no-no-no-no-lru-1core" "10" "50" "641.leela_s-800B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_10_PTC_16-no-no-no-no-lru-1core" "10" "50" "648.exchange2_s-1699B.champsimtrace.xz" &

srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_9_PTC_32-no-no-no-no-lru-1core" "10" "50" "600.perlbench_s-210B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_9_PTC_32-no-no-no-no-lru-1core" "10" "50" "602.gcc_s-734B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_9_PTC_32-no-no-no-no-lru-1core" "10" "50" "625.x264_s-18B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_9_PTC_32-no-no-no-no-lru-1core" "10" "50" "641.leela_s-800B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_9_PTC_32-no-no-no-no-lru-1core" "10" "50" "648.exchange2_s-1699B.champsimtrace.xz" &

srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_8_PTC_64-no-no-no-no-lru-1core" "10" "50" "600.perlbench_s-210B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_8_PTC_64-no-no-no-no-lru-1core" "10" "50" "602.gcc_s-734B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_8_PTC_64-no-no-no-no-lru-1core" "10" "50" "625.x264_s-18B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_8_PTC_64-no-no-no-no-lru-1core" "10" "50" "641.leela_s-800B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_8_PTC_64-no-no-no-no-lru-1core" "10" "50" "648.exchange2_s-1699B.champsimtrace.xz" &

srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_7_PTC_128-no-no-no-no-lru-1core" "10" "50" "600.perlbench_s-210B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_7_PTC_128-no-no-no-no-lru-1core" "10" "50" "602.gcc_s-734B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_7_PTC_128-no-no-no-no-lru-1core" "10" "50" "625.x264_s-18B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_7_PTC_128-no-no-no-no-lru-1core" "10" "50" "641.leela_s-800B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_7_PTC_128-no-no-no-no-lru-1core" "10" "50" "648.exchange2_s-1699B.champsimtrace.xz" &


srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_6_PTC_256-no-no-no-no-lru-1core" "10" "50" "600.perlbench_s-210B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_6_PTC_256-no-no-no-no-lru-1core" "10" "50" "602.gcc_s-734B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_6_PTC_256-no-no-no-no-lru-1core" "10" "50" "625.x264_s-18B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_6_PTC_256-no-no-no-no-lru-1core" "10" "50" "641.leela_s-800B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_6_PTC_256-no-no-no-no-lru-1core" "10" "50" "648.exchange2_s-1699B.champsimtrace.xz" &

srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_5_PTC_512-no-no-no-no-lru-1core-3_L" "10" "50" "600.perlbench_s-210B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_5_PTC_512-no-no-no-no-lru-1core-3_L" "10" "50" "602.gcc_s-734B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_5_PTC_512-no-no-no-no-lru-1core-3_L" "10" "50" "625.x264_s-18B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_5_PTC_512-no-no-no-no-lru-1core-3_L" "10" "50" "641.leela_s-800B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAs_GH_5_PTC_512-no-no-no-no-lru-1core-3_L" "10" "50" "648.exchange2_s-1699B.champsimtrace.xz" &



wait
