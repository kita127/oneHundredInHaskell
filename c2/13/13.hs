-- 13. col1.txtとcol2.txtをマージ
-- 12で作ったcol1.txtとcol2.txtを結合し，
-- 元のファイルの1列目と2列目をタブ区切りで並べたテキストファイルを作成せよ．確認にはpasteコマンドを用いよ．

import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  col1 <- readFile $ args !! 0
  col2 <- readFile $ args !! 1
  let res = unlines $ zipWith (\a b -> a ++ "\t" ++ b) (lines col1) (lines col2)
  writeFile "output.txt" res
