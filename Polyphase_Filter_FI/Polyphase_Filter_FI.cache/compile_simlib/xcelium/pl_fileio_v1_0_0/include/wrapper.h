
#ifndef WRAPPER_H
#define WRAPPER_H
#include <bitset>

uint32_t generateHeader(unsigned int pcktType, unsigned int srcCol, unsigned int srcRow, unsigned int ID);
uint32_t generateCtrlHeader(unsigned int returnID, unsigned int op, unsigned int numWords, unsigned int addr);

#endif
