app = microbench
benchmark_path ?= ~/nexus-am/apps/$(app)
start_path = ~/nexus-am/am/src/nemu/isa/riscv/boot/start.S
disasm_path = $(CURDIR)/output/disasm.txt
program ?= ~/nexus-am/apps/$(app)/build/$(app)-riscv64-xs.bin
interval_length = 3000
maxK = 60
bbfile ?= ~/NEMU/test_for_profiling/Profiling/workload/simpoint_bbv
bbvoutput ?= ~/NEMU/bbvoutput.txt
intervalfile ?= ~/NEMU/interval_init.txt
elf_txt = ~/nexus-am/apps/$(app)/build/$(app)-riscv64-xs.txt
elf = ~/nexus-am/apps/$(app)/build/$(app)-riscv64-xs.elf
simpoints_file ?= ./output/simpoints
outdir = $(CURDIR)/output
idx = 7103

# option = mainargs=test
option = 



.PHONY: first_step second_step third_step forth_step fifth_step sixth_step seventh_step eighth_step ninth_step tenth_step clean choose_idx
all: first_step second_step third_step forth_step fifth_step sixth_step seventh_step eighth_step ninth_step tenth_step eleventh_step


#1.编译benchmark
first_step:
	python scripts/changeStart.py before $(start_path) $(start_path)
	cd $(benchmark_path) && make ARCH=riscv64-xs $(option)
	cd $(benchmark_path) && riscv64-unknown-linux-gnu-objdump -d -s build/$(app)-riscv64-xs.elf > $(outdir)/disasm1.txt

#2.生成sample.bb 以及 bbvoutput.txt
second_step:
	cd ~/NEMU && ./build/riscv64-nemu-interpreter $(program) \
	-b --cpt-interval=$(interval_length) -D /home/shikye/NEMU/test_for_profiling -C Profiling -w workload
	gunzip ~/NEMU/test_for_profiling/Profiling/workload/simpoint_bbv.gz

#3.生成每个bb的instmap
third_step:
	python scripts/instout.py $(bbvoutput) $(elf_txt) $(outdir)/instmap

#4.运行simpoint
forth_step:
	./bin/simpoint -loadFVFile $(bbfile) -maxK $(maxK) -saveSimpoints $(outdir)/simpoints -saveSimpointWeights $(outdir)/weights

#5.找到聚类后每个phase代表interval中包含的指令块
fifth_step:
	python scripts/analyse.py $(outdir)/simpoints $(bbfile) $(outdir)/instmap $(outdir)/result.txt

#6.根据聚类后的interval id找到起始状态、地址，以及下一条指令的地址
sixth_step:
	-rm -rf $(bbfile)
	cd ~/NEMU && ./build/riscv64-nemu-interpreter $(program) \
	-b --cpt-interval=$(interval_length) -D /home/shikye/NEMU/test_for_profiling -C Profiling -w workload -B $(realpath $(simpoints_file)) --dump-mem=/home/shikye/SimPoint.3.2-fix/dumpfile/dumpmem.bin
	gunzip ~/NEMU/test_for_profiling/Profiling/workload/simpoint_bbv.gz

#7.处理intervalfile成指令
seventh_step:
	python scripts/interval.py $(intervalfile)
	riscv64-unknown-linux-gnu-gcc -c output/Interval_init.S -o output/Interval_init.o
	riscv64-unknown-linux-gnu-objdump -d -s output/Interval_init.o > $(outdir)/disasm2.txt
	-rm ~/nexus-am/am/src/nemu/isa/riscv/boot/Interval_init.S
	mv output/Interval_init.S ~/nexus-am/am/src/nemu/isa/riscv/boot/Interval_init.S

#8.重新编译benchmark并运行，获取内存数据
eighth_step:
	cd $(benchmark_path) && make ARCH=riscv64-xs $(option)
	cd $(benchmark_path) && riscv64-unknown-linux-gnu-objdump -d -s build/$(app)-riscv64-xs.elf > $(outdir)/disasm3.txt
	-rm -rf $(bbfile)
	-rm dumpfile/*
	cd ~/NEMU && ./build/riscv64-nemu-interpreter $(program) \
	-b --cpt-interval=$(interval_length) -D /home/shikye/NEMU/test_for_profiling -C Profiling -w workload -B $(realpath $(simpoints_file)) --dump-mem=/home/shikye/SimPoint.3.2-fix/dumpfile/dumpmem.bin
	gunzip ~/NEMU/test_for_profiling/Profiling/workload/simpoint_bbv.gz

#9.dump出数据段 bin2txt会修改interval_counter的值
ninth_step:
	-rm dumptxt/*
	-rm dumpoutput/*
	python scripts/truncate.py $(elf) dumpfile
	python scripts/bin2txt.py dumpfile dumptxt $(elf)
	python scripts/txt2bin.py dumptxt dumpoutput

#10.重新编译benchmark，给dut运行采样程序
tenth_step:
	python scripts/changeStart.py after $(start_path) $(start_path)
	cd $(benchmark_path) && make ARCH=riscv64-xs $(option)
	cd $(benchmark_path) && riscv64-unknown-linux-gnu-objdump -d -s build/$(app)-riscv64-xs.elf > $(outdir)/disasm4.txt
	mv $(bbfile) $(outdir)/simpoint.bb

#11.输出有效文件
eleventh_step:
	rm ~/on_board/* -rf
	cp -r dumpoutput ~/on_board
	cp $(program) ~/on_board


choose_idx:
	python scripts/fuzz_interval.py ~/nexus-am/am/src/nemu/isa/riscv/boot/Interval_init.S $(idx)
	python scripts/changeStart.py after $(start_path) $(start_path)
	cd $(benchmark_path) && make ARCH=riscv64-xs $(option)
	cd $(benchmark_path) && riscv64-unknown-linux-gnu-objdump -d -s build/$(app)-riscv64-xs.elf > $(outdir)/disasm4.txt



# 流程
# 1.生成sample.bb 以及 bbvoutput.txt
# first_step:
# 	cd ~/NEMU && ./build/riscv64-nemu-interpreter $(program) \
# 	-b --cpt-interval=$(interval_length) -D /home/shikye/NEMU/test_for_profiling -C Profiling -w workload
# 	gunzip ~/NEMU/test_for_profiling/Profiling/workload/simpoint_bbv.gz
# #2.生成每个bb的instmap
# second_step:
# 	python scripts/instout.py $(bbvoutput) $(elf_txt) $(outdir)/instmap
# #3.运行simpoint
# third_step:
# 	./bin/simpoint -loadFVFile $(bbfile) -maxK 30 -saveSimpoints $(outdir)/simpoints -saveSimpointWeights $(outdir)/weights
# #4.找到聚类后每个phase代表interval中包含的指令块
# forth_step:
# 	python scripts/analyse.py $(outdir)/simpoints $(bbfile) $(outdir)/instmap $(outdir)/result.txt
# #5.根据聚类后的interval id找到起始状态、地址，以及下一条指令的地址
# fifth_step:
# 	rm -rf $(bbfile)
# 	cd ~/NEMU && ./build/riscv64-nemu-interpreter $(program) \
# 	-b --cpt-interval=$(interval_length) -D /home/shikye/NEMU/test_for_profiling -C Profiling -w workload -B $(realpath $(simpoints_file)) --dump-mem=/home/shikye/SimPoint.3.2-fix/dumpfile/dumpmem.bin
# 	gunzip ~/NEMU/test_for_profiling/Profiling/workload/simpoint_bbv.gz
# #6.处理intervalfile成指令
# sixth_step:
# 	python scripts/interval.py $(intervalfile)
# 	riscv64-unknown-linux-gnu-gcc -c output/Interval_init.S -o output/Interval_init.o
# 	riscv64-unknown-linux-gnu-objdump -dj .text -sj .data output/Interval_init.o > $(outdir)/disasm.txt
# 	-rm ~/nexus-am/am/src/nemu/isa/riscv/boot/Interval_init.S
# 	mv output/Interval_init.S ~/nexus-am/am/src/nemu/isa/riscv/boot/Interval_init.S
# #7.结合intervalfile重新编译，这样数据段和代码段才是最终的样子
# seven_step:
# 	rm -rf $(bbfile)
# 	rm dumpfile/*
# 	cd ~/NEMU && ./build/riscv64-nemu-interpreter $(program) \
# 	-b --cpt-interval=$(interval_length) -D /home/shikye/NEMU/test_for_profiling -C Profiling -w workload -B $(realpath $(simpoints_file)) --dump-mem=/home/shikye/SimPoint.3.2-fix/dumpfile/dumpmem.bin
# 	gunzip ~/NEMU/test_for_profiling/Profiling/workload/simpoint_bbv.gz
# #8.dump出数据段
# eight_step:
# 	-rm dumptxt/*
# 	python scripts/truncate.py ~/nexus-am/apps/$(app)/build/$(app)-riscv64-xs.elf dumpfile
# 	python scripts/bin2txt.py dumpfile dumptxt



clean:
	rm -rf $(outdir)/* $(bbfile) $(bbvoutput) $(intervalfile) dumpfile/* dumptxt/*

run: FORCE
	./simpoint -loadFVFile ../input/sample.bb -maxK 30 -saveSimpoints ../output/sample.simpoints -saveSimpointWeights ../output/sample.weights

FORCE:
