#!/bin/bash

set -e  # 遇到错误立即退出

echo "🔧 开始初始化 dotfiles..."

# 备份函数
backup_file() {
  local file=$1
  if [ -f "$file" ]; then
    local backup="${file}.bak.$(date +%Y%m%d%H%M%S)"
    cp "$file" "$backup"
    echo "📦 已备份 $file -> $backup"
  else
    echo "ℹ️  $file 不存在，无需备份"
  fi
}

# 拷贝 .tmux.conf
echo "🔁 准备更新 ~/.tmux.conf..."
backup_file ~/.tmux.conf
cp .tmux.conf ~/.tmux.conf && echo "✅ 成功更新 ~/.tmux.conf"

# 拷贝 .zshrc
echo "🔁 准备更新 ~/.zshrc..."
backup_file ~/.zshrc
cp .zshrc ~/.zshrc && echo "✅ 成功更新 ~/.zshrc"

echo "🎉 初始化完成！你可能需要重新打开终端或运行：source ~/.zshrc"

