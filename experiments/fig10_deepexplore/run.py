import matplotlib.pyplot as plt
import matplotlib as mpl
import pandas as pd
import re
from mpl_toolkits.axes_grid1.inset_locator import inset_axes
from matplotlib.patches import Rectangle, ConnectionPatch
import numpy as np
# ===== 样式设置 =====
mpl.rcParams.update({
    "font.family": "Arial",
    "font.size": 8,
    "axes.labelsize": 8,
    "axes.titlesize": 8,
    "legend.fontsize": 7,
    "xtick.labelsize": 7,
    "ytick.labelsize": 7,
    "lines.linewidth": 1,
    "axes.linewidth": 0.8,
    "grid.linewidth": 0.3,
    "grid.color": "gray",
    "grid.linestyle": "--",
    "figure.dpi": 600,
    "savefig.dpi": 600,
    "pdf.fonttype": 42,
    "ps.fonttype": 42,
})

# ===== 自定义参数 =====
inset_border_color = "#7f7f7f"
connection_line_color = "#7f7f7f"

# ===== 配色与线型 =====
plot_config = { 
    "deepExplore stage1": {"color": "#ff7f0e", "linestyle": '-'},
    "deepExplore stage2": {"color": "#1f77b4", "linestyle": '-'},
    "fuzz only": {"color": "#d62728", "linestyle": '--'},
    "benchmark only": {"color": "#2ca02c", "linestyle": '-.'},
}
label_map = {
    "deepExplore stage1": "deepExplore stage1",
    "deepExplore stage2": "deepExplore stage2",
    "fuzz only": "fuzz only",
    "benchmark only": "benchmark only"
}

# ===== 数据读取函数 =====
def parse_data(path):
    with open(path, 'r') as f:
        lines = f.readlines()
    records = []
    for line in lines:
        if re.match(r"\d+\s\d+\s\d+", line):
            inst, cov, time = map(int, line.split())
            records.append((inst, cov, time))
    records.insert(0, (0, 0, 0))
    return records

def parse_simpoint_file(path):
    with open(path) as f:
        lines = f.readlines()
    categories = ["SIMPOINT_PROGRAM", "SIMPOINT_PHASE", "NORMAL PHASE"]
    data = {key: [] for key in categories}
    current_cat = None
    for line in lines:
        if any(c in line for c in categories):
            current_cat = next(c for c in categories if c in line)
        elif re.match(r"\d+\s+\d+\s+\d+", line):
            inst, cov, time = map(int, line.strip().split())
            data[current_cat].append((inst, cov, time))
    if data["SIMPOINT_PROGRAM"]:
        data["SIMPOINT_PHASE"].insert(0, data["SIMPOINT_PROGRAM"][-1])
    if data["SIMPOINT_PHASE"]:
        data["NORMAL PHASE"].insert(0, data["SIMPOINT_PHASE"][-1])
    return data

def make_stage_df(data_dict):
    dfs = []
    for key, stage in [("SIMPOINT_PROGRAM", "deepExplore stage1"),
                       ("SIMPOINT_PHASE", "deepExplore stage1"),
                       ("NORMAL PHASE", "deepExplore stage2")]:
        df = pd.DataFrame(data_dict[key], columns=["inst_num", "coverage", "time"])
        df["category"] = stage
        dfs.append(df)
    return pd.concat(dfs, ignore_index=True)

# ===== 加载数据 =====
file1 = '../../data/fig10_deepexplore/cov_data_hwfuzz_fo_0x1000_3.14_withsimpoint.txt'
file2 = '../../data/fig10_deepexplore/cov_data_hwfuzz_fo_0x1000_3.12_0.txt'
file3 = '../../data/fig10_deepexplore/output_file.txt'

df_simpoint = make_stage_df(parse_simpoint_file(file1))
df2 = pd.DataFrame(parse_data(file2), columns=["inst_num", "coverage", "time"])
df2["category"] = "fuzz only"
df3 = pd.DataFrame(parse_data(file3), columns=["inst_num", "coverage", "time"])
df3["category"] = "benchmark only"

df = pd.concat([df_simpoint, df2, df3], ignore_index=True)

# ===== 主图绘制 =====
TIME_CUTOFF = 2500
df_cut = df[df['time'] <= TIME_CUTOFF].copy()
fig, ax = plt.subplots(figsize=(3.4, 1.8), constrained_layout=True)

for cat in df_cut["category"].unique():
    sub = df_cut[df_cut["category"] == cat]
    ax.plot(sub["time"], sub["coverage"],
            label=label_map[cat],
            color=plot_config[cat]["color"],
            linestyle=plot_config[cat]["linestyle"])

ax.set_xlabel("Time (seconds)", fontsize=7)
ax.set_ylabel("Coverage points", fontsize=7)
ax.set_ylim(0, 34000)
ax.set_yticks([10000, 20000, 30000])
ax.grid(True)
ax.tick_params(axis='both', labelsize=6)
ax.legend(loc='lower right', frameon=True, fontsize=6)
# fig.text(0.02, -0.08, "(a)", fontsize=7, ha='left')

# ===== 子图 inset =====
x1, x2 = -50, 250
y1, y2 = 18000, 30500
inset_anchor = (0.18, 0.002)
axins = inset_axes(ax, width=1.0, height=0.6,
                   loc='lower left',
                   bbox_to_anchor=inset_anchor,
                   bbox_transform=ax.transAxes,
                   borderpad=0.5)

for cat in ["deepExplore stage1", "deepExplore stage2", "fuzz only"]:
    sub = df[df["category"] == cat]
    axins.plot(sub["time"], sub["coverage"],
               label=label_map[cat],
               color=plot_config[cat]["color"],
               linestyle=plot_config[cat]["linestyle"])

axins.set_xlim(-20, x2)
axins.set_ylim(y1, y2)

axins.set_xticks([])
axins.set_yticks([])
axins.tick_params(length=0)

# ===== 主图放大区域边框（红色） =====
rect = Rectangle((x1, y1), x2 - x1, y2 - y1,
                 linewidth=1, edgecolor=inset_border_color,
                 facecolor='none')
ax.add_patch(rect)

# ===== 子图边框颜色修改 =====
for spine in axins.spines.values():
    spine.set_edgecolor(inset_border_color)
    spine.set_linewidth(1)

# ===== 连接线（主图矩形 -> inset 子图） =====
con1 = ConnectionPatch(xyA=(0, 1), coordsA=axins.transAxes,
                       xyB=(x1, y1), coordsB=ax.transData,
                       color=connection_line_color, linewidth=0.6)
con2 = ConnectionPatch(xyA=(1, 1), coordsA=axins.transAxes,
                       xyB=(x2, y1), coordsB=ax.transData,
                       color=connection_line_color, linewidth=0.6)
fig.add_artist(con1)
fig.add_artist(con2)

# ===== 保存与展示 =====
# plt.savefig("inst_vs_coverage_split_simpoint_final.png", bbox_inches='tight')
# plt.show()



# ===== 补充统计打印 =====
print("===== 数据统计输出 =====")
# 1. fuzz only 与 deepExplore stage2 的交汇点
# 只保留 200s 以内的时间段
df_fo = df[(df["category"] == "fuzz only") & (df["time"] <= 200)].reset_index(drop=True)
df_de2 = df[(df["category"] == "deepExplore stage2") & (df["time"] <= 200)].reset_index(drop=True)

# 提前提取 numpy array
de2_cov = df_de2["coverage"].to_numpy()
de2_time = df_de2["time"].to_numpy()

min_diff = float('inf')
intersection = None

for i, row in df_fo.iterrows():
    cov_fo = row["coverage"]
    time_fo = row["time"]

    # 使用 numpy 加速找最小差值位置
    idx = np.abs(de2_cov - cov_fo).argmin()
    cov_de2 = de2_cov[idx]
    time_de2 = de2_time[idx]

    diff = abs(cov_de2 - cov_fo)
    if diff < min_diff:
        min_diff = diff
        intersection = (time_fo, cov_fo, time_de2, cov_de2)

if intersection:
    print(f"[交汇点] fuzz only at {intersection[0]}s: {intersection[1]} | "
          f"deepExplore stage2 at {intersection[2]}s: {intersection[3]}")

# 2. 2500s 时的覆盖率
target_time = 2500
print(f"\n[覆盖率 @ {target_time}s]")
for name in ["fuzz only", "deepExplore stage2", "benchmark only"]:
    sub = df[df["category"] == name]
    if sub.empty:
        continue
    # 找最接近 2500s 的时间点
    closest = sub.iloc[(sub["time"] - target_time).abs().argsort()[:1]]
    cov_val = closest["coverage"].values[0]
    print(f"{name}: {cov_val}")

# 3. fuzz only 达到最终覆盖率时，deepExplore stage2 的时间
final_cov_fo = df_fo["coverage"].max()
sub_de2 = df_de2[df_de2["coverage"] >= final_cov_fo]
if not sub_de2.empty:
    reach_time = sub_de2.iloc[0]["time"]
    print(f"\n[deepExplore stage2] 达到 fuzz only 最终覆盖率（{final_cov_fo}）所需时间: {reach_time}s")
else:
    print(f"\n[deepExplore stage2] 未能达到 fuzz only 最终覆盖率（{final_cov_fo}）")

