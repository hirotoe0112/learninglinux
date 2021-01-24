#!/bin/bash

# 引数で指定したディレクトリ以下に含まれるすべてのファイルとディレクトリを表示する

list_recursive ()
{
	local filepath=$1
	local indent=$2

	# ファイル名のみを取り出す
	echo "${indent}${filepath##*/}"

	if [ -d "$filepath" ]; then
		# ディレクトリである場合はファイルやディレクトリを
		# 一覧表示する
		local filename
		for filename in $(ls "$filepath")
		do
			# echo "${filepath}/${filename}"
			# ディレクトリなら再度自分自身の関数を呼び出す
			list_recursive "${filepath}/${filename}" "    $indent"
		done
	fi
}

list_recursive "$1" ""
