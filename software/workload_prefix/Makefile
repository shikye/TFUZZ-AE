CROSS_COMPILE := riscv64-unknown-linux-gnu-
COMMON_FLAGS  := -fno-pic -march=rv64g -mcmodel=medany

CFLAGS        += $(COMMON_FLAGS) -static
ASFLAGS       += $(COMMON_FLAGS) -O0
LDFLAGS       += -melf64lriscv -T include/linker.ld

# 获取所有的汇编源文件
src := $(wildcard src/*.S)

# 定义目标文件名称，并指定生成在 build 目录下
objs := $(patsubst src/%.S, build/%.o, $(src))

# 确保 build 目录存在
$(shell mkdir -p build)

# 第一步：编译源文件生成目标文件
build/%.o: src/%.S
	$(CROSS_COMPILE)gcc $(ASFLAGS) -c $< -o $@

# 第二步：链接目标文件生成最终镜像
build/image: $(objs)
	$(CROSS_COMPILE)ld $(LDFLAGS) -o $@ $(objs)
	$(CROSS_COMPILE)objdump -D $@ > build/image.dump

# 清理生成的目标文件和镜像
clean:
	rm -f build/*
