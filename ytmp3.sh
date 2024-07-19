#!/bin/bash

# 检查是否有提供 URL 参数
if [ $# -eq 0 ]; then
    echo "错误：未提供 YouTube 链接。"
    echo "用法：$0 <YouTube-URL>"
    exit 1
fi

# 使用 yt-dlp 下载并转换为 mp3，使用第一个命令行参数
yt-dlp -x --audio-format mp3 "$1"
