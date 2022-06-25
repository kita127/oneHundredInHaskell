-- 17. １列目の文字列の異なり
-- 1列目の文字列の種類（異なる文字列の集合）を求めよ．確認にはcut, sort, uniqコマンドを用いよ．
-- 注：何種類の名前があるかを求めろということと思われる

import Data.List (group, sort)
import System.Environment (getArgs)

main :: IO ()
main = do
  [f] <- getArgs
  c <- readFile f
  let res = length . group . sort . map (head . words) . lines $ c
  print res
