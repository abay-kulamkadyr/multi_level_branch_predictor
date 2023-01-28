import os
import sys
import platform
from datetime import datetime
from time import sleep



#./run_champsim.sh perceptron-next_line-no-no-lru-1core 1 10 600.perlbench_s-210B.champsimtrace.xz
PTC = 512
for i in range(5,14):
  print(f'Running {i} and {PTC}')
  os.system(f'./run.sh MGAs-no-no-no-no-lru-1core-2_L-GH_{i}-PTC_{PTC}')
  PTC = PTC >> 1