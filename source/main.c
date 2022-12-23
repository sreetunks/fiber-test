#include <emmintrin.h>
#pragma pack(push, 16)
typedef struct Context
{
    void *rip, *rsp;
    void *rbx, *rbp, *r12, *r13, *r14, *r15, *rdi, *rsi;
    __m128i xmm6, xmm7, xmm8, xmm9, xmm10, xmm11, xmm12, xmm13, xmm14, xmm15;
} Context;
#pragma pack(pop)
extern void get_context(Context *c);
extern void set_context(Context *c);

void test_func(volatile int* arg) {
    Context c;
    get_context(&c);
    ++(*arg);

    if (*arg < 3)
    {
        set_context(&c);
    }
}

int main()
{
    volatile int x = 0;

    test_func(&x);

    return 0;
}