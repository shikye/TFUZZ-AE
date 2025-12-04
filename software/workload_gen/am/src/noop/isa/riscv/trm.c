#include <am.h>
#include <riscv.h>
#include <klib.h>

extern char _heap_start;
extern char _pmem_end;
int main(const char *args);
void __am_init_uartlite(void);
void __am_uartlite_putchar(char ch);

_Area _heap = {
  .start = &_heap_start,
  .end = &_pmem_end,
};

void _putc(char ch) {
  __am_uartlite_putchar(ch);
}

void _halt(int code) {
  __asm__ volatile("mv a0, %0; .word 0x0005006b" : :"r"(code));

  // should not reach here during simulation
  printf("Exit with code = %d\n", code);

  // should not reach here on FPGA
  while (1);
}

void _trm_init() {
  // __am_init_uartlite();
  // extern char _stack_pointer;
  // extern char _heap_start;
  // extern char _stack_top;
  // printf("stack_top = %p\n", &_stack_top);
  // printf("stack_pointer = %p\n", &_stack_pointer);
  // printf("heap_start = %p\n", &_heap_start);

  // extern char b1;
  // extern char e1;
  // printf("b1 = %p\n", &b1);
  // printf("e1 = %p\n", &e1);

  // extern char b2;
  // extern char e2;
  // printf("b2 = %p\n", &b2);
  // printf("e2 = %p\n", &e2);

  // extern char b3;
  // extern char e3;
  // printf("b3 = %p\n", &b3);
  // printf("e3 = %p\n", &e3);

  // extern char b4;
  // extern char e4;
  // printf("b4 = %p\n", &b4);
  // printf("e4 = %p\n", &e4);


  extern const char __am_mainargs;
  int ret = main(&__am_mainargs);

  // printf("end\n");
  // __asm__ volatile ("li t0, 0x1000"   // 将地址 0x1000 加载到临时寄存器 t0
  //                 "\n\t jr t0"      // 通过寄存器 t0 跳转到该地址
  //                 :
  //                 :
  //                 : "t0");          // 告诉编译器 t0 寄存器会被修改

  _halt(ret);
}
