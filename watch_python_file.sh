#!/bin/bash

########################################
# このシェルスクリプトはatcoder配下のディレクトリの中の各問題ディレクトリ
# （例えば以下のディレクトリ）にいるとき、
# /home/koto/study_python/atcoder/abc-228/a
# 以下のように呼び出すこと
# ../../watch_python_file a.py 01
########################################

# 引数1つ目は監視対象のファイル名
WATCHED_FILE=$PWD"/"$1

# 引数2つ目はテストケース番号(01,02など)
INPUT_FILE=$PWD"/input/input_"$2
OUTPUT_FILE=$PWD"/output/output_"$2

# 引数3つ目はpythonのオプション(-Oをつけると__debug__を読み込む)
OPTION=$3


# color def
ESC=$(printf '\033') RESET="${ESC}[0m"
GREEN="${ESC}[32m"
YELLOW="${ESC}[33m"
DEFAULT="${ESC}[39m"



echo WATCHED_FILE: $WATCHED_FILE
echo INPUT_FILE: $INPUT_FILE
echo OUTPUT_FILE: $OUTPUT_FILE


# ファイルの存在判定
if [ ! -e $WATCHED_FILE ]; then
    echo "$WATCHED_FILE is not exist"
    exit
fi

if [ ! -e $INPUT_FILE ]; then
    echo "$INPUT_FILE is not exist"
    exit
fi


# 更新前の時間を取得（初回はシェルスクリプト実行時の時刻）
BFR_UPDT=`date +%Y%m%d%H%M%S`

echo "-----------------"

# 無限ループ
while true; do
    # 1秒ごとに監視
    sleep 1;
    # 監視対象ファイルの更新日時を取得
    AFT_UPDT=`date +%Y%m%d%H%M%S -r $WATCHED_FILE`
    # もし監視対象のファイルがBFR_UPDTより新しければ、
    if [[ $BFR_UPDT < $AFT_UPDT ]]; then
        # date を実行
        echo UPDATED $1 !!!!
        date
        # input をcat
        echo "INPUT :"
        echo $GREEN
        cat $INPUT_FILE
        echo $DEFAULT
        echo "-----------------"
        # パイソンを実行(インプットから読み込み、アウトプットに吐き出す)
        python3 $OPTION $WATCHED_FILE < $INPUT_FILE > $OUTPUT_FILE
        # BFR_UPDTを更新する
        BFR_UPDT=$AFT_UPDT
    fi
done





