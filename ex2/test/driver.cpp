#include <cstdlib>
#define MAX_SIM 50

void set_random(Vtop *dut, vluint64_t sim_unit) {
  dut->data_i = rand()%8;
}
