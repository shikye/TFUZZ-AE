import matplotlib.pyplot as plt
import matplotlib as mpl
import pandas as pd
import re

# 样式设置（论文风格）
mpl.rcParams.update({
    "font.family": "Arial",
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

# 方法名称和文件路径
methods = [
    ("DifuzzRTL", "../../data/fig7_cov_instr/cov_data_difuzz_100_200_4_8_noopt.txt", "../../data/fig7_cov_instr/cov_data_difuzz_100_200_4_7_opt.txt"),
    ("Cascade", "../../data/fig7_cov_instr/cascade_noopt_limitfieature_4_8.txt", "../../data/fig7_cov_instr/cascade_opt_limitfieature_4_6.txt"),
    ("TurboFuzz", "../../data/fig7_cov_instr/cov_data_hwfuzz_fo_0x1000_3.12_0.txt", "../../data/fig7_cov_instr/cov_data_4_5_optmap_0x1000_withcorpus.txt"),
]

# 读取函数
def parse_file(path):
    records = []
    with open(path) as f:
        for line in f:
            if re.match(r"\d+\s+\d+\s+\d+", line):
                inst, cov, time = map(int, line.strip().split())
                records.append((time, cov))
    return pd.DataFrame(records, columns=["time", "cov"])

# 配色与线型
colors = ['#d62728', '#1f77b4']
linestyles = ['--', '-']

def get_cov_at(df, target):
    row = df.iloc[(df["time"] - target).abs().argsort()[:1]]
    return row["cov"].values[0] if not row.empty else "N/A"

# 创建图像
fig, axes = plt.subplots(nrows=3, ncols=1, figsize=(3.4, 2.7), constrained_layout=True)

for i, (method, file_before, file_after) in enumerate(methods):
    ax = axes[i]
    
    df_before = parse_file(file_before)
    df_after = parse_file(file_after)

    cutoff_time = 10000
    df_before = df_before[df_before["time"] <= cutoff_time]
    df_after = df_after[df_after["time"] <= cutoff_time]

    x_min, x_max = 0, cutoff_time
    x_pad = int(cutoff_time * 0.05)
    y_max = max(df_before["cov"].max(), df_after["cov"].max())
    y_pad = int(y_max * 0.1)

    # 画图
    ax.plot(df_after['time'], df_after['cov'],
            label='With Opt',
            color=colors[1], linestyle=linestyles[1])
    ax.plot(df_before['time'], df_before['cov'],
            label='No Opt',
            color=colors[0], linestyle=linestyles[0])
    

    ax.set_xlim(x_min - x_pad, x_max + x_pad)
    ax.set_ylim(0, 50000)
    ax.set_yticks([20000, 40000])
    ax.set_title(method, fontsize=6, pad=4)

    if i == 2:
        ax.set_xlabel("Time (seconds)", fontsize=6)

    # 只在第一个子图中放图例
    if i == 0:
        ax.legend(loc='upper left', fontsize=6, frameon=True)
    
    ax.grid(True)

    # cov_before = get_cov_at(df_before, 10000)
    # cov_after = get_cov_at(df_after, 10000)
    # print(f"[{method}] @ 10000s → No Opt: {cov_before}, With Opt: {cov_after}")
    cov_before = df_before.iloc[-1]["cov"] if not df_before.empty else "N/A"
    cov_after = df_after.iloc[-1]["cov"] if not df_after.empty else "N/A"
    print(f"[{method}] @ 10000s → No Opt: {cov_before}, With Opt: {cov_after}")

# 添加统一 y 轴标签
fig.text(-0.03, 0.5, "Coverage points", va='center', rotation='vertical', fontsize=7)

# 保存图像
plt.savefig("fig4_opt_compare_time_vs_coverage_yfixed.png", bbox_inches='tight')
plt.show()





