#include "core.h"

HW_RESULT hw(void)
{
    if (printf("Hello world!\n") < 0)
    {
        return HW_PRINT_ERROR;
    };
    return HW_OK;
}
