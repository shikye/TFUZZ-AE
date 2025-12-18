import os
import re
import numpy as np
import matplotlib.pyplot as plt

# ===== 样式设置（论文标准） =====
plt.rcParams.update({
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

def parse_instruction_counts(filepath):
    counts = []
    with open(filepath, 'r') as f:
        for line in f:
            if re.match(r'^\d+\s+\d+\s+\d+$', line.strip()):
                counts.append(int(line.strip().split()[0]))
    return counts

def compute_deltas(counts):
    return [counts[i] - counts[i - 1] for i in range(1, len(counts))]

def compute_ratios(deltas, offset=0):
    return [(delta - offset) / delta if delta > offset else 0.0 for delta in deltas]

def make_boxplot_stats(data, label):
    q1 = np.percentile(data, 25)
    q3 = np.percentile(data, 75)
    iqr = q3 - q1
    whisker_low = np.min([x for x in data if x >= q1 - 1.5 * iqr])
    whisker_high = np.max([x for x in data if x <= q3 + 1.5 * iqr])
    return {
        'label': label,
        'whislo': whisker_low,
        'q1': q1,
        'med': np.median(data),
        'q3': q3,
        'whishi': whisker_high,
        'fliers': []
    }

# ==== 输入数据 ====
input_files = {
    "DifuzzRTL 500": ("../../data/fig8_prevalence/cov_data_difuzz_800.txt", 270),
    "DifuzzRTL 1000": ("../../data/fig8_prevalence/cov_data_difuzz_1600_long.txt", 270),
    "TurboFuzz 1000": ("../../data/fig8_prevalence/cov_data_hwfuzz_fo_0x400_3.13_0.txt", 70),
    "TurboFuzz 2000": ("../../data/fig8_prevalence/cov_data_hwfuzz_fo_0x800_3.12_0.txt", 70),
    "TurboFuzz 4000": ("../../data/fig8_prevalence/cov_data_hwfuzz_fo_0x1000_3.12_0.txt", 70),
}

# ==== Cascade 手动 boxplot stats ====
cascade_stats = [
    {
        'label': "Cascade 500",
        'whislo': 0.72,
        'q1': 0.88,
        'med': 0.925,
        'q3': 0.955,
        'whishi': 0.98,
        'fliers': []
    },
    {
        'label': "Cascade 1000 ",
        'whislo': 0.75,
        'q1': 0.89,
        'med': 0.94,
        'q3': 0.96,
        'whishi': 0.98,
        'fliers': []
    }
]

# ==== 构造完整 box stats ====
box_data = []
insert_at = 2

for label, (path, offset) in input_files.items():
    if not os.path.exists(path):
        continue
    counts = parse_instruction_counts(path)
    deltas = compute_deltas(counts)
    ratios = compute_ratios(deltas, offset)
    stats = make_boxplot_stats(ratios, label)
    box_data.append(stats)

# 插入 Cascade 类别
for stat in reversed(cascade_stats):
    box_data.insert(insert_at, stat)

# ==== 绘图 ====
fig, ax = plt.subplots(figsize=(3.4, 2.0))  # 单栏论文图宽度

boxplot = ax.bxp(box_data, showfliers=False)

# ✅ 样式修复（线色）
for i in range(len(box_data)):
    boxplot['boxes'][i].set_color('black')
    boxplot['boxes'][i].set_linewidth(1.2)

    boxplot['whiskers'][i * 2].set_color('black')
    boxplot['whiskers'][i * 2 + 1].set_color('black')

    boxplot['caps'][i * 2].set_color('black')
    boxplot['caps'][i * 2 + 1].set_color('black')

    boxplot['medians'][i].set_color('blue')
    boxplot['medians'][i].set_linewidth(1)

# 标签与坐标美化
ax.set_ylim(0, 1)
ax.set_ylabel("Prevalence")
ax.set_xticks(range(1, len(box_data) + 1))
ax.set_xticklabels([d['label'] for d in box_data], rotation=15)
ax.grid(axis='y', linestyle='--', linewidth=0.3)

plt.tight_layout()
plt.savefig("fig6_prevalence_boxplot_fixed.png", bbox_inches='tight')
plt.show()


# ✅ 计算平均值函数
def compute_mean(data):
    return np.mean(data)

print("\n📌 Boxplot Summary:")
for stat in box_data:
    label = stat['label']
    # 如果是 Cascade 的手动数据，没有原始数据，跳过平均值
    if "Cascade" in label:
        print(f"{label}:")
        print(f"  Min (Whisker Low): {stat['whislo']:.4f}")
        print(f"  Q1:                {stat['q1']:.4f}")
        print(f"  Median:            {stat['med']:.4f}")
        print(f"  Q3:                {stat['q3']:.4f}")
        print(f"  Max (Whisker High):{stat['whishi']:.4f}")
        print(f"  Mean:              (N/A, manual data)\n")
    else:
        # 从 label 找到原始路径并重新计算 mean
        path, offset = input_files[label]
        counts = parse_instruction_counts(path)
        deltas = compute_deltas(counts)
        ratios = compute_ratios(deltas, offset)
        mean_val = compute_mean(ratios)

        print(f"{label}:")
        print(f"  Min (Whisker Low): {stat['whislo']:.4f}")
        print(f"  Q1:                {stat['q1']:.4f}")
        print(f"  Median:            {stat['med']:.4f}")
        print(f"  Q3:                {stat['q3']:.4f}")
        print(f"  Max (Whisker High):{stat['whishi']:.4f}")
        print(f"  Mean:              {mean_val:.4f}\n")

