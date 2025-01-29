#export TRACE_DIR=traces
#SBATCH --ntasks=32
#SBATCH --ntasks-per-node=32
export TRACE_DIR=/data/dpc3_traces/
BINARY=${1}
OPTION=${2}

srun --ntasks=1 --cpus-per-task=1 ./run_champsim.sh ${BINARY} 10 50 600.perlbench_s-210B.champsimtrace.xz ${OPTION} &
srun --ntasks=1 --cpus-per-task=1 ./run_champsim.sh ${BINARY} 10 50 602.gcc_s-734B.champsimtrace.xz ${OPTION} &
wait
# ./run_champsim.sh ${BINARY} 10 50 603.bwaves_s-3699B.champsimtrace.xz ${OPTION}
# ./run_champsim.sh ${BINARY} 10 50 605.mcf_s-665B.champsimtrace.xz ${OPTION}
# ./run_champsim.sh ${BINARY} 10 50 607.cactuBSSN_s-2421B.champsimtrace.xz ${OPTION}
# ./run_champsim.sh ${BINARY} 10 50 619.lbm_s-4268B.champsimtrace.xz ${OPTION}
# ./run_champsim.sh ${BINARY} 10 50 620.omnetpp_s-874B.champsimtrace.xz ${OPTION}
# ./run_champsim.sh ${BINARY} 10 50 621.wrf_s-575B.champsimtrace.xz ${OPTION}
# ./run_champsim.sh ${BINARY} 10 50 623.xalancbmk_s-700B.champsimtrace.xz ${OPTION}
srun --ntasks=1 --cpus-per-task=1 ./run_champsim.sh ${BINARY} 10 50 625.x264_s-18B.champsimtrace.xz ${OPTION} &
# ./run_champsim.sh ${BINARY} 10 50 627.cam4_s-573B.champsimtrace.xz ${OPTION}
# ./run_champsim.sh ${BINARY} 10 50 628.pop2_s-17B.champsimtrace.xz ${OPTION}
# ./run_champsim.sh ${BINARY} 10 50 631.deepsjeng_s-928B.champsimtrace.xz ${OPTION}
# ./run_champsim.sh ${BINARY} 10 50 638.imagick_s-10316B.champsimtrace.xz ${OPTION}
srun --ntasks=1 --cpus-per-task=1 ./run_champsim.sh ${BINARY} 10 50 641.leela_s-800B.champsimtrace.xz ${OPTION} &
wait
# ./run_champsim.sh ${BINARY} 10 50 644.nab_s-5853B.champsimtrace.xz ${OPTION}
srun --ntasks=1 --cpus-per-task=1 ./run_champsim.sh ${BINARY} 10 50 648.exchange2_s-1699B.champsimtrace.xz ${OPTION} &
# ./run_champsim.sh ${BINARY} 10 50 649.fotonik3d_s-1176B.champsimtrace.xz ${OPTION}
# ./run_champsim.sh ${BINARY} 10 50 654.roms_s-842B.champsimtrace.xz ${OPTION}
# ./run_champsim.sh ${BINARY} 10 50 657.xz_s-3167B.champsimtrace.xz ${OPTION}

wait
