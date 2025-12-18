import matplotlib.pyplot as plt
import matplotlib as mpl
import pandas as pd
import re

# 样式设置
mpl.rcParams['text.usetex'] = False
mpl.rcParams.update({
    # "font.family": "Arial",
    "font.size": 8,
    # "axes.labelsize": 8,
    "axes.titlesize": 8,
    # "legend.fontsize": 7,
    # "xtick.labelsize": 7,
    # "ytick.labelsize": 7,
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

# 配色
colors = ['#1f77b4', '#d62728']
linestyles = ['-', '--']
labels = ['with corpus scheduling', 'without corpus scheduling']

# 读取数据函数
def parse_data(path):
    with open(path, 'r') as f:
        lines = f.readlines()
    records = []
    for line in lines:
        if re.match(r"\d+\s\d+\s\d+", line):
            inst_num, coverage, time = map(int, line.split())
            records.append((inst_num, coverage, time))
    records.insert(0, (0, 0, 0))
    return records

# 文件路径
file1 = '../../data/fig9_corpus/cov_data_hwfuzz_fo_0x1000_3.12_0.txt'
file2 = '../../data/fig9_corpus/cov_data_4000_without_corpus.txt'

# 载入数据
df1 = pd.DataFrame(parse_data(file1), columns=["inst_num", "coverage", "time"])
df1['category'] = 'with corpus scheduling'
df2 = pd.DataFrame(parse_data(file2), columns=["inst_num", "coverage", "time"])
df2['category'] = 'without corpus scheduling'
df = pd.concat([df1, df2], ignore_index=True)

# 限制范围
TIME_CUTOFF = 10000
df_time = df[df['time'] <= TIME_CUTOFF].copy()

fig, ax = plt.subplots(figsize=(3.4, 1.2), constrained_layout=True)

for i, category in enumerate(['with corpus scheduling', 'without corpus scheduling']):
    sub = df_time[df_time['category'] == category]
    ax.plot(sub['time'], sub['coverage'],
            label=labels[i],
            color=colors[i],
            linestyle=linestyles[i])


ax.set_xlabel('Time (seconds)', fontsize=7)
ax.set_ylabel('Coverage points', fontsize=7)

ax.tick_params(axis='both', labelsize=6)

ax.set_ylim(23000, 31000)
ax.set_yticks([25000, 27500, 30000])
ax.grid(True)

ax.legend(loc='lower right', frameon=True, fontsize=8)

# 标注 (b)
# fig.text(0.02, -0.08, "(b)", fontsize=7, ha='left')

plt.savefig("time_vs_coverage.png", bbox_inches='tight')
plt.show()

# ========== 数据分析输出 ==========

# 1. 10000s 时的覆盖率
print("📌 Coverage at 10000 seconds:")
df_10000 = df[df['time'] <= 10000].groupby('category').last().reset_index()
for _, row in df_10000.iterrows():
    print(f"{row['category']}: coverage = {row['coverage']}")

# 计算倍率
covs = df_10000.set_index('category')['coverage']
if all(cat in covs for cat in labels):
    cov_ratio = covs[labels[0]] / covs[labels[1]]
    print(f"Ratio (with / without): {cov_ratio:.4f}")

# 1.2. 3600s 时的覆盖率
print("📌 Coverage at 3600 seconds:")
df_3600 = df[df['time'] <= 3600].groupby('category').last().reset_index()
for _, row in df_3600.iterrows():
    print(f"{row['category']}: coverage = {row['coverage']}")

# 计算倍率
covs = df_3600.set_index('category')['coverage']
if all(cat in covs for cat in labels):
    cov_ratio = covs[labels[0]] / covs[labels[1]]
    print(f"Ratio (with / without): {cov_ratio:.4f}")

# 2. 达到 27500 覆盖率所需时间
print("\n📌 Time to reach 27500 coverage:")
for category in ['with corpus scheduling', 'without corpus scheduling']:
    sub = df[df['category'] == category]
    reached = sub[sub['coverage'] >= 27500]
    if not reached.empty:
        time_val = reached.iloc[0]['time']
        print(f"{category}: time = {time_val}")
    else:
        print(f"{category}: never reached 27500 coverage")

# 计算倍率
try:
    t1 = df[df['category'] == labels[0]]
    t2 = df[df['category'] == labels[1]]
    time1 = t1[t1['coverage'] >= 27500].iloc[0]['time']
    time2 = t2[t2['coverage'] >= 27500].iloc[0]['time']
    time_ratio = time2 / time1
    print(f"Ratio (time_without / time_with): {time_ratio:.4f}")
except IndexError:
    print("⚠️ One of the datasets never reached 27500 coverage.")



