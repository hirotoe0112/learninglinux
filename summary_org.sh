#!/bin/bash

# 引数で指定されたパスは、通常ファイルなのかディレクトリなのかを表示します。
# ディレクトリであれば、その中に含まれているファイル一覧を表示します。
# 通常のファイルであれば、ファイルの先頭５行を表示します。

# 引数の文字列を取得
arg=$1

if [ -d "$arg" ]; then
	echo "$arg is directory"
	ls "$arg"
elif [ -f "$arg" ]; then
	echo "$arg is file"
	head -n 5 "$arg"
fi
