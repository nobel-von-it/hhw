#include "test.h"

void test_hw(void)
{
    CU_ASSERT(hw() == HW_OK);
}

int main(void)
{
    CU_initialize_registry();

    CU_pSuite suite = CU_add_suite("HW Test Suite", 0, 0);
    CU_add_test(suite, "test of hw()", test_hw);

    CU_basic_run_tests();
    CU_cleanup_registry();

    return 0;
}
