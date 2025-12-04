#include <am.h>
#include <nemu.h>
#include <klib-macros.h>

// common part of TMR

extern char _heap_start;
int main(const char *args);

_Area _heap = RANGE(&_heap_start, &_pmem_end);

void _trm_init() {
  extern const char __am_mainargs;
  int ret = main(&__am_mainargs);

  // __asm__ volatile ("li t0, 0x1000"   // 将地址 0x1000 加载到临时寄存器 t0
  //                   "\n\t jr t0"      // 通过寄存器 t0 跳转到该地址
  //                   :
  //                   :
  //                   : "t0");          // 告诉编译器 t0 寄存器会被修改
  _halt(ret);
}

// these APIs are defined under the isa-dependent directory

void _putc(char ch);
void _halt(int code);
