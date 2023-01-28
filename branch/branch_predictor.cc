#include "ooo_cpu.h"
#include <algorithm>

#define BIMODAL_TABLE_SIZE 65536
#define BIMODAL_PRIME 65521
#define MAX_COUNTER 3
int8_t bimodal_table[NUM_CPUS][BIMODAL_TABLE_SIZE];


inline void clamp(int8_t& value) {
    if (value < 0) value = 0;
    else if (value > MAX_COUNTER) value = MAX_COUNTER;
}

void O3_CPU::initialize_branch_predictor()
{
    cout << "CPU " << cpu << " Bimodal branch predictor" << endl;

    for(int i = 0; i < BIMODAL_TABLE_SIZE; i++)
        bimodal_table[cpu][i] = 0;
}

uint8_t O3_CPU::predict_branch(uint8_t previous_branch_predictions[], uint8_t branch_predicted, uint64_t ip)
{
    uint32_t hash = ip % BIMODAL_PRIME;
    uint8_t prediction = (bimodal_table[cpu][hash] >= (int8_t)((MAX_COUNTER + 1)/2)) ? 1 : 0;

    return prediction;
}

void O3_CPU::last_branch_result(uint8_t actual_branches_taken[], uint8_t branches_found, uint64_t ip)
{
    uint32_t hash = ip % BIMODAL_PRIME;

    if (actual_branches_taken[0])
        {
		
		bimodal_table[cpu][hash]++;
		clamp(bimodal_table[cpu][hash]);
	}
    else {
	    bimodal_table[cpu][hash]--;
		clamp(bimodal_table[cpu][hash]);
	
	}
}