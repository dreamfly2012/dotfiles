#!/bin/bash

set -e  # 出错时立即退出

echo "🛡️ 开始备份 dotfiles 到当前目录..."

# 备份 .tmux.conf
echo "🔁 备份 ~/.tmux.conf 到当前目录..."
if [ -f ~/.tmux.conf ]; then
  cp ~/.tmux.conf . && echo "✅ 已成功备份 .tmux.conf"
else
  echo "⚠️  未找到 ~/.tmux.conf，跳过"
fi

# 备份 .zshrc
echo "🔁 备份 ~/.zshrc 到当前目录..."
if [ -f ~/.zshrc ]; then
  cp ~/.zshrc . && echo "✅ 已成功备份 .zshrc"
else
  echo "⚠️  未找到 ~/.zshrc，跳过"
fi

echo "🎉 所有可用 dotfiles 已备份完成！"

