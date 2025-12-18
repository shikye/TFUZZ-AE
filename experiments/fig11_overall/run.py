import matplotlib.pyplot as plt
import matplotlib as mpl
import pandas as pd
import re

# ===== 样式设置（论文风格）=====
mpl.rcParams.update({
    # "font.family": "Arial",
    "font.size": 8,
    "axes.labelsize": 7,
    "axes.titlesize": 7,
    "legend.fontsize": 6,
    "xtick.labelsize": 6,
    "ytick.labelsize": 6,
    "lines.linewidth": 1,
    "axes.linewidth": 0.8,
    "grid.linewidth": 0.3,
    "grid.color": "gray",
    "grid.linestyle": "--",
    "figure.dpi": 300,
    "savefig.dpi": 600,
    "pdf.fonttype": 42,
    "ps.fonttype": 42,
})

# ===== 方法名称和对应文件路径 =====
methods = {
    "TurboFuzz 4000": "../../data/fig11_overall/cov_data_4_5_optmap_0x1000_withcorpus.txt",
    # "TurboFuzz 2000": "../../data/fig11_overall/cov_data_4_10_optmap_0x800_withcorpus.txt",
    "TurboFuzz 1000": "../../data/fig11_overall/cov_data_4_10_optmap_0x400_withcorpus.txt",
    "Cascade": "../../data/fig11_overall/cascade_opt_limitfieature_4_6.txt",
    "DifuzzRTL": "../../data/fig11_overall/cov_data_difuzz_100_200_4_7_opt.txt",
}

# ===== 支持两种格式的数据读取 =====
def parse_file(path):
    records = []
    with open(path) as f:
        for line in f:
            if re.match(r"\d+\s+\d+\s+\d+", line):
                inst, cov, time = map(int, line.strip().split())
                records.append((inst, cov, time))
    return pd.DataFrame(records, columns=["inst_num", "coverage", "time"])

# ===== 配色与线型 =====
# colors = ['#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd']
# linestyles = [ '-', '-', '-', '-.', ':',]

colors = ['#1f77b4', '#2ca02c', '#d62728', '#9467bd']
linestyles = [ '-', '-', '-.', ':',]
# ===== 数据读取与处理 =====
all_dfs = []
for i, (name, path) in enumerate(methods.items()):
    df = parse_file(path)
    df["category"] = name
    all_dfs.append(df)

df = pd.concat(all_dfs, ignore_index=True)
# df = df[df['coverage'] >= 24000].copy()

# ===== 时间对齐裁剪 =====
# cutoff_inst = df.groupby('category')['inst_num'].max().min()
cutoff_time = df.groupby('category')['time'].max().min()

# print("Cutoff inst_num:", cutoff_inst)
print("Cutoff time:", cutoff_time)

df = df[df["time"] <= cutoff_time].copy()
# df = df[df["inst_num"] <= cutoff_inst].copy()

# ===== 绘图（单图）=====
fig, ax = plt.subplots(figsize=(3.4, 1.8), constrained_layout=True)

for i, name in enumerate(methods.keys()):
    sub = df[df["category"] == name]
    ax.plot(sub["time"], sub["coverage"],
            label=name,
            color=colors[i],
            linestyle=linestyles[i],
            linewidth=1)

# 坐标轴范围（带 padding）
x_min, x_max = 0, cutoff_time
x_pad = int(0.05 * x_max)
y_max = df["coverage"].max()
y_pad = int(0.08 * y_max)

ax.set_xlim(x_min - x_pad, x_max + x_pad)
ax.set_ylim(0, y_max + y_pad)

# 轴标签与图例
ax.set_xlabel("Time (s)")
ax.set_ylabel("Coverage points")
ax.grid(True)
ax.legend(loc='lower right', frameon=True, fontsize=6)

# 保存图像
print(y_max)
plt.savefig("fig5_method_compare_time_vs_coverage.png", bbox_inches='tight')
plt.show()

# ===== 打印统计指标 =====
targets_cov = [30000, 35000, 40000]
targets_time = [3600, 7200, 14400]

print("\n📌 最终覆盖率（每条线最大 coverage）：")
for name in methods.keys():
    sub = df[df["category"] == name]
    max_cov = sub["coverage"].max()
    print(f"{name}: {max_cov}")

print("\n📌 达到目标覆盖率所需时间：")
for cov_target in targets_cov:
    print(f"\n✅ 达到 {cov_target} coverage 所需时间：")
    for name in methods.keys():
        sub = df[df["category"] == name]
        reached = sub[sub["coverage"] >= cov_target]
        if not reached.empty:
            time_needed = reached.iloc[0]["time"]
            print(f"{name}: {time_needed} s")
        else:
            print(f"{name}: ❌ 未达到")

print("\n📌 指定时间点的覆盖率：")
for t in targets_time:
    print(f"\n✅ 在 {t} 秒时的 coverage：")
    for name in methods.keys():
        sub = df[df["category"] == name]
        sub_at_t = sub[sub["time"] <= t]
        if not sub_at_t.empty:
            cov = sub_at_t.iloc[-1]["coverage"]
            print(f"{name}: {cov}")
        else:
            print(f"{name}: ❌ 数据不足")
