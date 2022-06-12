-- 08. 暗号文
-- 与えられた文字列の各文字を，以下の仕様で変換する関数cipherを実装せよ．
-- 英小文字ならば(219 - 文字コード)の文字に置換
-- その他の文字はそのまま出力
-- この関数を用い，英語のメッセージを暗号化・復号化せよ．

import Data.Char (chr, ord)
import System.Environment (getArgs)

main :: IO ()
main = do
  arg <- head <$> getArgs
  let ciphered = cipher arg
  putStrLn ciphered

cipher :: String -> String
cipher =
  map
    ( \c ->
        if ord c >= ord 'a' && ord c <= ord 'z'
          then chr (219 - ord c)
          else c
    )
