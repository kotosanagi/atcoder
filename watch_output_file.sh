#!/bin/bash

########################################
# このシェルスクリプトはatcoder配下のディレクトリの中の各問題ディレクトリ
# （例えば以下のディレクトリ）にいるとき、
# /home/koto/study_python/atcoder/abc-228/a
# 以下のように呼び出すこと
# ../../watch_output_file 01
########################################


# 引数1つ目はテストケース番号(01,02など)
WATCHED_OUTPUT_FILE=$PWD"/output/output_"$1


# color def
ESC=$(printf '\033') RESET="${ESC}[0m"
GREEN="${ESC}[32m"
YELLOW="${ESC}[33m"
DEFAULT="${ESC}[39m"

echo WATCHED_OUTPUT_FILE: $WATCHED_OUTPUT_FILE


# ファイルの存在判定
if [ ! -e $WATCHED_OUTPUT_FILE ]; then
    touch $WATCHED_OUTPUT_FILE
fi


# 更新前の時間を取得（初回はシェルスクリプト実行時の時刻）
BFR_UPDT=`date +%Y%m%d%H%M%S`

echo "-----------------"

# 無限ループ
while true; do
    # 1秒ごとに監視
    sleep 1;
    # 監視対象ファイルの更新日時を取得
    AFT_UPDT=`date +%Y%m%d%H%M%S -r $WATCHED_OUTPUT_FILE`
    # もし監視対象のファイルがBFR_UPDTより新しければ、
    if [[ $BFR_UPDT < $AFT_UPDT ]]; then
        # date を実行
        echo UPDATED OUTPUT_$1 !!!!
        date
        # input をcat
        echo "OUTPUT :"
        echo $GREEN
        cat $WATCHED_OUTPUT_FILE
        echo $DEFAULT
        echo "-----------------"
        # BFR_UPDTを更新する
        BFR_UPDT=$AFT_UPDT
    fi
done





