#ifndef __HHW_CORE_H
#define __HHW_CORE_H

#include <stdio.h>

typedef enum
{
    HW_PRINT_ERROR,
    HW_OK,
} HW_RESULT;

HW_RESULT hw(void);

#endif
