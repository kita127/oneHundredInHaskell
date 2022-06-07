-- 11. タブをスペースに置換
-- タブ1文字につきスペース1文字に置換せよ．確認にはsedコマンド，trコマンド，もしくはexpandコマンドを用いよ．

import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let fileName = head args
  contents <- readFile fileName
  let output = map (\c -> if c == '\t' then ' ' else c) contents
  putStr output
