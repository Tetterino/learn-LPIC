# シェル変数
# 設定されたシェルだけが使用する変数
# 子プロセスには引き継がれない

# 環境変数
# 設定されたシェルとそのシェルで起動したプログラムが使用する変数
# 子プロセスに引き継がれる
# シェル変数をエクスポート宣言することで作成

echo シェル変数の一覧を表示するのは \`set\` コマンドを用います。

set

echo シェル変数動かしてみる例
echo \$LANG \>\>\> $(echo $LANG)
echo とりま時間を表示させる \>\>\> $(date)
echo LANG変数の消去
echo unset LANG
unset LANG
echo \$LANG \>\>\> $(echo $LANG)
echo LANG変数に言語情報セット
echo LANG=ja_JP.UTF-8
LANG=ja_JP.UTF-8
echo とりま時間を表示させる \>\>\> $(date)
echo 変わってる!!!\(エディタの環境とかだと変わんないことあります。おそらくdateがLANG見てない可能性あります。\)
