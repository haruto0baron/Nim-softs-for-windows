# 必要なモジュールをインポート
import strutils
# ユーザーに数値の入力を促す
echo "Please enter number:"
# 入力を読み取り、整数に変換
var name: int = parseInt(readLine(stdin))
# 入力された数値に10を加算して表示
echo name, "+ 10 = ", name + 10