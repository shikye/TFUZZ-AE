#!/usr/bin/env python3
"""
Manage large files for the TFUZZ-AE artifact.

Usage:
  # 1) 
  #    python3 manage_large_files.py pack
  #
  # 2) 
  #    python3 manage_large_files.py restore
"""

import os
import sys
import json
import tarfile
import shutil
from pathlib import Path

# 阈值：大于等于多少字节视为“大文件”
SIZE_THRESHOLD = 100 * 1024 * 1024  # 100 MB

ROOT = Path(__file__).resolve().parent
MANIFEST = ROOT / "raw_logs_manifest.json"
ARCHIVE = ROOT / "raw_logs.tar.xz"   # 改成 xz 压缩

def find_large_files():
    """递归扫描仓库，找到所有 >= SIZE_THRESHOLD 的文件。"""
    exclude_dirs = {".git", ".github", "__pycache__"}
    exclude_files = {ARCHIVE.name, MANIFEST.name, Path(__file__).name}

    results = []
    for root, dirs, files in os.walk(ROOT):
        # 过滤不需要扫描的目录
        dirs[:] = [d for d in dirs if d not in exclude_dirs]

        for fname in files:
            if fname in exclude_files:
                continue
            fpath = Path(root) / fname
            rel = fpath.relative_to(ROOT)
            try:
                size = fpath.stat().st_size
            except FileNotFoundError:
                continue

            if size >= SIZE_THRESHOLD:
                results.append((rel, size))
    return results

def pack_large_files():
    """pack 模式：检测所有 >=100MB 的文件，打包到 raw_logs.tar.xz，并从工作区移走。"""
    print(f"[INFO] Scanning for files >= {SIZE_THRESHOLD / (1024*1024):.1f} MB ...")
    large_files = find_large_files()

    if not large_files:
        print("[INFO] No large files found. Nothing to pack.")
        return

    print("[INFO] Found the following large files:")
    for rel, size in large_files:
        print(f"  - {rel}  ({size / (1024*1024):.1f} MB)")

    staging_dir = ROOT / "_raw_logs_staging"
    if staging_dir.exists():
        shutil.rmtree(staging_dir)
    staging_dir.mkdir()

    manifest_entries = []

    for idx, (rel, size) in enumerate(large_files):
        src = ROOT / rel
        stored_name = f"{idx:03d}__{rel.name}"
        dst = staging_dir / stored_name

        shutil.move(src, dst)
        manifest_entries.append({
            "stored": stored_name,
            "original": str(rel),
            "size_bytes": int(size),
        })
        print(f"[MOVE] {rel} -> {dst}")

    # 写 manifest
    with MANIFEST.open("w", encoding="utf-8") as f:
        json.dump({"version": 1, "files": manifest_entries}, f, indent=2)
    print(f"[INFO] Wrote manifest: {MANIFEST}")

    # 打成 xz 压缩包
    with tarfile.open(ARCHIVE, "w:xz") as tar:
        for entry in manifest_entries:
            fpath = staging_dir / entry["stored"]
            tar.add(fpath, arcname=entry["stored"])
    print(f"[INFO] Created archive: {ARCHIVE}")

    shutil.rmtree(staging_dir)
    print(f"[INFO] Removed staging directory: {staging_dir}")

    print("[DONE] Large files have been packed into raw_logs.tar.xz and "
          "removed from the working tree.")
    print("       Commit raw_logs.tar.xz and raw_logs_manifest.json to Git.")

def restore_large_files(force=False):
    """restore 模式：从 raw_logs.tar.xz + manifest 中恢复所有大文件到原路径。"""
    if not ARCHIVE.exists():
        print(f"[ERROR] Archive not found: {ARCHIVE}")
        sys.exit(1)
    if not MANIFEST.exists():
        print(f"[ERROR] Manifest not found: {MANIFEST}")
        sys.exit(1)

    with MANIFEST.open("r", encoding="utf-8") as f:
        manifest = json.load(f)

    files = manifest.get("files", [])
    if not files:
        print("[INFO] No files in manifest. Nothing to restore.")
        return

    extract_dir = ROOT / "_raw_logs_extracted"
    if extract_dir.exists():
        shutil.rmtree(extract_dir)
    extract_dir.mkdir()

    print(f"[INFO] Extracting {ARCHIVE} ...")
    with tarfile.open(ARCHIVE, "r:xz") as tar:
        tar.extractall(path=extract_dir)

    print(f"[INFO] Restoring {len(files)} file(s)...")

    for entry in files:
        stored_name = entry["stored"]
        original_rel = Path(entry["original"])

        src = extract_dir / stored_name
        dst = ROOT / original_rel

        if not src.exists():
            print(f"[WARN] Missing in archive: {stored_name}")
            continue

        dst.parent.mkdir(parents=True, exist_ok=True)

        if dst.exists() and not force:
            print(f"[SKIP] {dst} already exists (use force=True to overwrite).")
            continue

        shutil.copy2(src, dst)
        print(f"[OK] Restored {original_rel}")

    shutil.rmtree(extract_dir)
    print(f"[INFO] Cleaned extracted directory: {extract_dir}")
    print("[DONE] All large files restored.")

def main():
    if len(sys.argv) < 2 or sys.argv[1] not in {"pack", "restore"}:
        print("Usage:")
        print("  python3 manage_large_files.py pack     # 打包并移除 >=100MB 大文件")
        print("  python3 manage_large_files.py restore  # 解压并恢复大文件")
        sys.exit(1)

    mode = sys.argv[1]
    if mode == "pack":
        pack_large_files()
    elif mode == "restore":
        restore_large_files(force=False)

if __name__ == "__main__":
    main()
