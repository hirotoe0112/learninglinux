#!/bin/bash

# 日記作成スクリプト

# 日記データ保存用ディレクトリ
diarydir="${HOME}/work/diary"

# ディレクトリがない場合、作成する
if [ ! -d "$diarydir" ]; then
	mkdir "$diarydir"
fi

# 日記ファイル
filename="${diarydir}/$(date '+%Y-%m-%d').txt"

# 日記ファイルを始めて書く場合、先頭に日付を挿入
if [ ! -e "$filename" ]; then
	date '+%Y-%m-%d' > "$filename"
fi

vim "$filename"
