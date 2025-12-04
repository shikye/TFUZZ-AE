import matplotlib.pyplot as plt
import matplotlib as mpl
import pandas as pd

# ===== 样式设置 =====
mpl.rcParams['text.usetex'] = False
mpl.rcParams.update({
    "font.family": "Arial",
    "font.size": 8,
    "axes.labelsize": 6,
    "axes.titlesize": 6,
    "legend.fontsize": 5,
    "xtick.labelsize": 5,
    "ytick.labelsize": 5,
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

# ===== 参数设置 =====
module_list = ["TLB", "DCache", "BTB", "FPU", "CSRFile", "PTW", "MulDiv"]
bit_list = [13, 14, 15]
file_prefix = "../../data/fig6_inst_cov/module_data_"
file_suffix = "bit.txt"

# 三种颜色
before_color = '#de6d65'
max_color = '#7899ba'
after_color = '#88ba7d'


# ===== 添加子图标题列表 =====
subplot_titles = [
    "13-bit instrumentation width",
    "14-bit instrumentation width",
    "15-bit instrumentation width",
]
# ===== 图像设置：3行1列子图，共享 y 轴 =====
fig, axes = plt.subplots(nrows=3, ncols=1, figsize=(3.4, 3.2), constrained_layout=True)

# 自定义每张图的 y 轴上限和刻度线
ytick_lists = [
    [30000, 60000],
    [60000, 120000],
    [120000, 240000],
]
ylim_values = [68000, 135000, 270000]

for i, bit in enumerate(bit_list):
    ax = axes[i]
    df = pd.read_csv(f"{file_prefix}{bit}{file_suffix}", sep=r'\s+', engine='python')
    df = df[df['Module'].isin(module_list)].copy()

    # 添加 Total 行
    total_row = pd.DataFrame([{
        "Module": "Total",
        "IdealStates": df['IdealStates'].sum(),
        "ReachableStates": df['ReachableStates'].sum()
    }])
    df = pd.concat([df, total_row], ignore_index=True)
    display_modules = module_list + ["Total"]

    x = range(len(display_modules))
    bar_width = 0.2

    ax.bar([j - bar_width for j in x], df['IdealStates'], width=bar_width,
           label='Possible cov pts', color=max_color)
    ax.bar(x, df['ReachableStates'], width=bar_width,
           label='Achievable cov pts, no opt', color=before_color)
    ax.bar([j + bar_width for j in x], df['IdealStates'], width=bar_width,
           label='Achievable cov pts, with opt', color=after_color)

    ax.set_xticks(x)
    ax.set_xticklabels(display_modules, rotation=30)
    ax.grid(True, axis='y', linestyle='--', linewidth=0.3)
    ax.set_ylim(0, ylim_values[i])
    ax.set_yticks(ytick_lists[i])
    if i == 2:
        ax.legend(loc='upper left', fontsize=5, frameon=True)

    # 添加子图内部标题，位置为 upper center（居中顶部，略微向下偏移）
    if i == 2:
        ax.text(0.60, 0.95, subplot_titles[i], transform=ax.transAxes,
            ha='center', va='top', fontsize=6, weight='bold')
    else:
        ax.text(0.50, 0.95, subplot_titles[i], transform=ax.transAxes,
            ha='center', va='top', fontsize=6, weight='bold')

# 添加统一的 y 轴标签
fig.text(-0.03, 0.5, "Coverage  points", va='center', rotation='vertical', fontsize=7)

# 保存图像
plt.savefig("module_state_comparison_reordered.png", bbox_inches='tight')
plt.show()
