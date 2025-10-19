#!/bin/bash

echo "启动音乐数据爬虫..."

# 设置默认参数
START_ID=${1:-100001}
END_ID=${2:-100200}
MAX_WORKERS=${3:-15}

echo "参数:"
echo "起始ID: $START_ID"
echo "结束ID: $END_ID" 
echo "线程数: $MAX_WORKERS"

# 导出环境变量
export START_ID=$START_ID
export END_ID=$END_ID
export MAX_WORKERS=$MAX_WORKERS

# 运行爬虫
python crawler.py

echo "爬虫执行完成!"
