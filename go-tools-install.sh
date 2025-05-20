#!/bin/bash

set -e

echo "🔧 设置国内 Go 模块代理..."
export GO111MODULE=on
export GOPROXY=https://goproxy.cn,direct

echo "🚀 安装常用 Go 开发工具..."

go install golang.org/x/tools/gopls@latest
go install github.com/go-delve/delve/cmd/dlv@latest
go install golang.org/x/tools/cmd/goimports@latest
go install honnef.co/go/tools/cmd/staticcheck@latest
go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
go install github.com/cweill/gotests/...@latest
go install github.com/koron/iferr@latest
go install github.com/fatih/gomodifytags@latest
go install github.com/josharian/impl@latest
go install github.com/haya14busa/goplay/cmd/goplay@latest
go install golang.org/x/tools/cmd/godoc@latest
go install github.com/stamblerre/gocode@latest
go install go.uber.org/mock/mockgen@latest
go install github.com/kisielk/errcheck@latest
go install github.com/mgechev/revive@latest

echo "✅ 所有 Go 工具安装完成！"

echo "📦 请确认你的 PATH 包含：\$(go env GOPATH)/bin"
echo "    你可以将以下内容添加到 ~/.bashrc 或 ~/.zshrc："
echo "    export PATH=\"\$PATH:\$(go env GOPATH)/bin\""

