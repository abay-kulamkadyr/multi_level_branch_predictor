# Set the absolute path in 
# export M5_PATH=/data/gem5-baseline
# export LAB_PATH=$PWD

import numpy as np
import pandas as pd
from matplotlib import pyplot as plt
import os

import sys
 
# setting path
sys.path.append('../')



datadir = './results_50M'

# GHSizeInBits = ['GH_7','GH_8','GH_9','GH_10','GH_11','GH_12','GH_13','GH_14','GH_15','GH_16']
GHSizeInBitsMGAs = ['GH_5','GH_6','GH_7','GH_8','GH_9','GH_10','GH_11','GH_12','GH_13','GH_14']
GHSizeInBits = ['GH_6','GH_8','GH_10','GH_12','GH_14','GH_16']
# levels = ['2_L','3_L','4_L']
levels = ['1_L','2_L','3_L','4_L']
phtSize = ['PTC_1','PTC_2','PTC_4','PTC_8','PTC_16','PTC_32','PTC_64','PTC_128','PTC_256','PTC_512']
# bimodal-no-no-no-no-lru-1core
predictor = ['MGAg-no-no-no-no-lru-1core']
comparePredictor = ['MGAg-no-no-no-no-lru-1core', 'MGAs-no-no-no-no-lru-1core', 'bimodal-no-no-no-no-lru-1core']
benchmarks = ['600.perlbench_s-210B.champsimtrace.xz',
# '607.cactuBSSN_s-2421B.champsimtrace.xz',
# '623.xalancbmk_s-700B.champsimtrace.xz',
# '631.deepsjeng_s-928B.champsimtrace.xz',
'648.exchange2_s-1699B.champsimtrace.xz',
'602.gcc_s-734B.champsimtrace.xz',
# '619.lbm_s-4268B.champsimtrace.xz',        
'625.x264_s-18B.champsimtrace.xz',    
# '638.imagick_s-10316B.champsimtrace.xz',  
# '649.fotonik3d_s-1176B.champsimtrace.xz',
# '603.bwaves_s-3699B.champsimtrace.xz',
# '620.omnetpp_s-874B.champsimtrace.xz',
# '627.cam4_s-573B.champsimtrace.xz',
'641.leela_s-800B.champsimtrace.xz']
# '654.roms_s-842B.champsimtrace.xz',
# '605.mcf_s-665B.champsimtrace.xz',      
# '621.wrf_s-575B.champsimtrace.xz',      
# '628.pop2_s-17B.champsimtrace.xz',    
# '644.nab_s-5853B.champsimtrace.xz',   
# '657.xz_s-3167B.champsimtrace.xz']

DOI = ['CPU 0 cumulative IPC:']

df = None


rows = []
for bm in benchmarks: 
    for lvl in levels:
        for ghSize in GHSizeInBits:
            directory = datadir+"/"+bm+"-MGAg-no-no-no-no-lru-1core-"+lvl+"-"+ghSize+".txt"
            if os.path.isfile(directory):
                entry = []
                entry = entry + [bm,'MGAg-no-no-no-no-lru-1core',lvl,ghSize,' ']
                with open(directory, 'r') as fp:
                    lines = fp.readlines()
                fp.close()
                for row in lines:
                    word = 'CPU 0 cumulative IPC:'
                    if row.find(word) != -1:
                        num = row[len(word)+1:]
                        num = num[:num.find(' ')]
                        entry.append(float(num))
                        break
                for row in lines:
                    word = 'CPU 0 Branch Prediction Accuracy:'
                    if row.find(word) != -1:
                        num = row[len(word)+1:]
                        num = num[:num.find('%')]
                        entry.append(float(num))
                        break
                rows.append(entry)
for bm in benchmarks: 
    for ptc in phtSize:
        for ghSize in GHSizeInBitsMGAs:
            directory = datadir+"/"+bm+"-MGAs-no-no-no-no-lru-1core-2_L-"+ghSize+"_"+ptc+".txt"
            if os.path.isfile(directory):
                entry = []
                entry = entry + [bm,'MGAs-no-no-no-no-lru-1core','2_L',ghSize,ptc]
                with open(directory, 'r') as fp:
                    lines = fp.readlines()
                fp.close()
                for row in lines:
                    word = 'CPU 0 cumulative IPC:'
                    if row.find(word) != -1:
                        num = row[len(word)+1:]
                        num = num[:num.find(' ')]
                        entry.append(float(num))
                        break
                for row in lines:
                    word = 'CPU 0 Branch Prediction Accuracy:'
                    if row.find(word) != -1:
                        num = row[len(word)+1:]
                        num = num[:num.find('%')]
                        entry.append(float(num))
                        break
                rows.append(entry)
for bm in benchmarks: 
    for ptc in phtSize:
        for ghSize in GHSizeInBitsMGAs:
            directory = datadir+"/"+bm+"-bimodal-no-no-no-no-lru-1core-1_L.txt"
            if os.path.isfile(directory):
                entry = []
                entry = entry + [bm,'bimodal-no-no-no-no-lru-1core','1_L',' ',' ']
                with open(directory, 'r') as fp:
                    lines = fp.readlines()
                fp.close()
                for row in lines:
                    word = 'CPU 0 cumulative IPC:'
                    if row.find(word) != -1:
                        num = row[len(word)+1:]
                        num = num[:num.find(' ')]
                        entry.append(float(num))
                        break
                for row in lines:
                    word = 'CPU 0 Branch Prediction Accuracy:'
                    if row.find(word) != -1:
                        num = row[len(word)+1:]
                        num = num[:num.find('%')]
                        entry.append(float(num))
                        break
                rows.append(entry)
print(rows)
df = pd.DataFrame(rows, columns=['benchmark','predictor', 'levels_of_prediction','GlobalHistorySize', 'PHTSize','IPC', 'accuracy'])

fig_size = plt.rcParams["figure.figsize"]
fig_size[0] = 10
fig_size[1] = 5
plt.rcParams["figure.figsize"] = fig_size

# Number of Branch Prediction Per Cycle
norm=True
stat = 'IPC'
fig1 = plt.figure()
ax = fig1.add_subplot(1,1,1)

i = 0
for bm in benchmarks:
    base = df[ (df['benchmark'] == '600.perlbench_s-210B.champsimtrace.xz' ) ][stat].iloc[0] if norm else 1
    for j, level in enumerate(levels):
        d = df[( df['levels_of_prediction'] == level) & ( df['benchmark'] == bm) & ( df['predictor'] == 'MGAg-no-no-no-no-lru-1core') & ( df['GlobalHistorySize'] == 'GH_16')]
        print(d)
        ax.bar(i, d[stat].iloc[0]/base, color='C'+str(j))
        i += 1
    i += 1
for i, sys in enumerate(levels):
    plt.bar(0,0,color='C'+str(i), label=sys)
new_names = benchmarks 
plt.xticks(np.arange(len(new_names))*(len(levels)+1)+i/2, new_names, rotation=40, ha='right')

plt.ylabel('IPC')
plt.legend(loc=2, prop={'size': 8})
plt.title('IPC, Fixed at 16 bits')  
plt.tight_layout()
plt.savefig('figures/IPC_at_16_bits.png', format='png', dpi=600)

fig_size = plt.rcParams["figure.figsize"]
fig_size[0] = 10
fig_size[1] = 5
plt.rcParams["figure.figsize"] = fig_size

# Prediction Accuracy vs. Number of Pattern History Table
norm=True
stat = 'accuracy'
fig1 = plt.figure()
ax = fig1.add_subplot(1,1,1)
yValues = [[]] * len(benchmarks)
xValues = []

i = 0
for ghbits in GHSizeInBits:
    #base = df[ (df['benchmark'] == '600.perlbench_s-210B.champsimtrace.xz' ) ][stat].iloc[0] if norm else 1
    for j, bm in enumerate(benchmarks):
        d = df[( df['GlobalHistorySize'] == ghbits) & ( df['benchmark'] == bm) & ( df['levels_of_prediction'] == '2_L') & ( df['predictor'] == 'MGAg-no-no-no-no-lru-1core')]
        #print(d)
        yValues[j] = yValues[j] + [d[stat].iloc[0]/100]
        #print(yValues)
        #ax.plot(i, d[stat].iloc[0]/100, color='C'+str(j))
    xValues += [i]
    #print("Done")
    i += 1
#print(yValues)
#print(xValues)
for i, sys in enumerate(benchmarks):
    plt.plot(xValues,yValues[i],color='C'+str(i), label=sys)
new_names = GHSizeInBits 
plt.xticks(np.arange(len(new_names)), new_names, rotation=40, ha='right')
plt.ylabel('Accuracy')
plt.legend(loc=2, prop={'size': 8})
plt.title('Prediction Accuracy vs. History Register Length Fixed at 2 Levels')  
plt.tight_layout()
plt.savefig('figures/Prediction_Accuracy_vs_History_Register_Length_2_Predictions.png', format='png', dpi=600)

#Prediction Accuracy VS. Number of History Tables

norm=True
stat = 'accuracy'
fig1 = plt.figure()
ax = fig1.add_subplot(1,1,1)
yValues = [[]] * len(benchmarks)
xValues = []

i = 0
for ghbits in GHSizeInBitsMGAs:
    for j, bm in enumerate(benchmarks):
        d = df[( df['GlobalHistorySize'] == ghbits) & ( df['benchmark'] == bm) & ( df['levels_of_prediction'] == '2_L') & ( df['predictor'] == 'MGAs-no-no-no-no-lru-1core')]
        print(d)
        print(j)
        yValues[j] = yValues[j] + [d[stat].iloc[0]/100]
        print(yValues)
    xValues += [i]
    print("Done")
    i += 1

print(len(yValues))
print(len(yValues[0]))
print(len(xValues))
for i, sys in enumerate(benchmarks):
    plt.plot(xValues,yValues[i],color='C'+str(i), label=sys)
new_names = GHSizeInBitsMGAs 
plt.xticks(np.arange(len(new_names)), new_names, rotation=40, ha='right')
plt.ylabel('Accuracy')
plt.legend(loc='lower left', prop={'size': 8})
plt.title('Prediction Accuracy VS. Number of History Tables')  
plt.tight_layout()
plt.savefig('figures/Prediction_Accuracy_vs_Number_of_History_Tables.png', format='png', dpi=600)

#Prediction Accuracy of Bimodial Vs MGAs Vs MGAg
norm=True
stat = 'accuracy'
fig1 = plt.figure()
ax = fig1.add_subplot(1,1,1)

i = 0
for bm in benchmarks:
    base = df[ (df['benchmark'] == '600.perlbench_s-210B.champsimtrace.xz' ) ][stat].iloc[0] if norm else 1
    for j, pred in enumerate(comparePredictor):
        d = df[( df['GlobalHistorySize'] == 'GH_8') & ( df['benchmark'] == bm) & ( df['predictor'] == pred) & ( df['levels_of_prediction'] == '2_L')]
        if pred == 'bimodal-no-no-no-no-lru-1core':
            d = df[( df['benchmark'] == bm) & ( df['predictor'] == pred)]
        print(d)
        ax.bar(i, d[stat].iloc[0]/base, color='C'+str(j))
        i += 1
    i += 1
for i, sys in enumerate(comparePredictor):
    plt.bar(0,0,color='C'+str(i), label=sys)
new_names = benchmarks 
plt.xticks(np.arange(len(new_names))*(len(comparePredictor)+1)+i/2, new_names, rotation=40, ha='right')

plt.ylabel('Accuracy')
plt.legend(loc='lower left', prop={'size': 8})
plt.title('Prediction Accuracy of Bimodal Vs MGAs Vs MGAg (Multi Level GH bits at 8) (Bimodal Table size at 65536)')  
plt.tight_layout()
plt.savefig('figures/Prediction_Accuracy_of_Bimodal_Vs_MGAs_Vs_MGAg_(Multi_Level_GH_bits_at_8).png', format='png', dpi=600)


#Prediction Accuracy of Bimodial Vs MGAs Vs MGAg
fig_size = plt.rcParams["figure.figsize"]
fig_size[0] = 10
fig_size[1] = 5
plt.rcParams["figure.figsize"] = fig_size

norm=True
stat = 'IPC'
fig1 = plt.figure()
ax = fig1.add_subplot(1,1,1)

i = 0
for bm in benchmarks:
    base = df[ (df['benchmark'] == '600.perlbench_s-210B.champsimtrace.xz' ) ][stat].iloc[0] if norm else 1
    for j, pred in enumerate(comparePredictor):
        d = df[( df['GlobalHistorySize'] == 'GH_8') & ( df['benchmark'] == bm) & ( df['predictor'] == pred) & ( df['levels_of_prediction'] == '2_L')]
        if pred == 'bimodal-no-no-no-no-lru-1core':
            d = df[( df['benchmark'] == bm) & ( df['predictor'] == pred)]
        print(d)
        ax.bar(i, d[stat].iloc[0]/base, color='C'+str(j))
        i += 1
    i += 1
for i, sys in enumerate(comparePredictor):
    plt.bar(0,0,color='C'+str(i), label=sys)
new_names = benchmarks 
plt.xticks(np.arange(len(new_names))*(len(comparePredictor)+1)+i/2, new_names, rotation=40, ha='right')

plt.ylabel('IPC')
plt.legend(loc='lower left', prop={'size': 8})
plt.title('IPC of Bimodal Vs MGAs Vs MGAg (Multi Level GH bits at 8) (Bimodal Table size at 65536)')  
plt.tight_layout()
plt.savefig('figures/IPC_of_Bimodal_Vs_MGAs_Vs_MGAg_(Multi_Level_GH_bits_at_8).png', format='png', dpi=600)

fig_size = plt.rcParams["figure.figsize"]
fig_size[0] = 10
fig_size[1] = 5
plt.rcParams["figure.figsize"] = fig_size
