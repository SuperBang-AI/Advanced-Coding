#!/bin/bash

# 一键推送脚本
# 使用方法: ./quick-push.sh "提交信息"

# 检查是否提供了提交信息
if [ -z "$1" ]; then
    echo "请提供提交信息"
    echo "使用方法: ./quick-push.sh \"你的提交信息\""
    exit 1
fi

# 执行 git 操作
echo "正在添加所有更改..."
git add .

echo "正在提交更改..."
git commit -m "$1"

echo "正在推送到远程仓库..."
git push

echo "推送完成！" 