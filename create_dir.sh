#!/bin/bash

########################################
# このシェルスクリプトはatcoder配下に
# （例えば以下のディレクトリ）にいるとき、
# /home/koto/study_python/atcoder/
# 以下のように呼び出すこと
# ./watch_output_file abc-229
########################################

# 引数１つ目はタイトル名(abc-229など)
TITLE_PROB=$1

# タイトルディレクトリ配下に各問題のディレクトリ等を作成
create_each_prob () {
    mkdir -p $PWD"/"$TITLE_PROB"/"$1
    touch    $PWD"/"$TITLE_PROB"/"$1"/"$1".py"
    mkdir -p $PWD"/"$TITLE_PROB"/"$1"/input"
    mkdir -p $PWD"/"$TITLE_PROB"/"$1"/output"
    touch    $PWD"/"$TITLE_PROB"/"$1"/input/input_XX"
    touch    $PWD"/"$TITLE_PROB"/"$1"/output/output_XX"
}


# カレントディレクトリ配下にタイトル名のディレクトリを作成
mkdir $TITLE_PROB

# タイトル名のディレクトリ配下に子ディレクトリを作成
create_each_prob a
create_each_prob b
create_each_prob c
create_each_prob d
create_each_prob e
create_each_prob f



find $PWD"/"$TITLE_PROB





