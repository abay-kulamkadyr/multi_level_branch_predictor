#!/bin/sh


#SBATCH --ntasks=8
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=1GB
#SBATCH --time=50:00

# Link to spec 2017 traces
export TRACE_DIR=/data/dpc3_traces/
# Execute job steps
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_6-no-no-no-no-lru-1core" "10" "50" "600.perlbench_s-210B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_6-no-no-no-no-lru-1core" "10" "50" "602.gcc_s-734B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_6-no-no-no-no-lru-1core" "10" "50" "625.x264_s-18B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_6-no-no-no-no-lru-1core" "10" "50" "641.leela_s-800B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_6-no-no-no-no-lru-1core" "10" "50" "648.exchange2_s-1699B.champsimtrace.xz" &

srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_8-no-no-no-no-lru-1core" "10" "50" "600.perlbench_s-210B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_8-no-no-no-no-lru-1core" "10" "50" "602.gcc_s-734B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_8-no-no-no-no-lru-1core" "10" "50" "625.x264_s-18B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_8-no-no-no-no-lru-1core" "10" "50" "641.leela_s-800B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_8-no-no-no-no-lru-1core" "10" "50" "648.exchange2_s-1699B.champsimtrace.xz" &



srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_10-no-no-no-no-lru-1core" "10" "50" "600.perlbench_s-210B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_10-no-no-no-no-lru-1core" "10" "50" "602.gcc_s-734B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_10-no-no-no-no-lru-1core" "10" "50" "625.x264_s-18B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_10-no-no-no-no-lru-1core" "10" "50" "641.leela_s-800B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_10-no-no-no-no-lru-1core" "10" "50" "648.exchange2_s-1699B.champsimtrace.xz" &



srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_12-no-no-no-no-lru-1core" "10" "50" "600.perlbench_s-210B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_12-no-no-no-no-lru-1core" "10" "50" "602.gcc_s-734B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_12-no-no-no-no-lru-1core" "10" "50" "625.x264_s-18B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_12-no-no-no-no-lru-1core" "10" "50" "641.leela_s-800B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_12-no-no-no-no-lru-1core" "10" "50" "648.exchange2_s-1699B.champsimtrace.xz" &



srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_14-no-no-no-no-lru-1core" "10" "50" "600.perlbench_s-210B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_14-no-no-no-no-lru-1core" "10" "50" "602.gcc_s-734B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_14-no-no-no-no-lru-1core" "10" "50" "625.x264_s-18B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_14-no-no-no-no-lru-1core" "10" "50" "641.leela_s-800B.champsimtrace.xz" &
srun --ntasks=1 --cpus-per-task=$SLURM_CPUS_PER_TASK python3 run.py "MGAg_GH_14-no-no-no-no-lru-1core" "10" "50" "648.exchange2_s-1699B.champsimtrace.xz" &



wait