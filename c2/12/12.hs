-- 12. 1列目をcol1.txtに，2列目をcol2.txtに保存
-- 各行の1列目だけを抜き出したものをcol1.txtに，2列目だけを抜き出したものをcol2.txtとしてファイルに保存せよ．確認にはcutコマンドを用いよ．

import System.Environment (getArgs)

main :: IO ()
main = do
  contents <- readFile . head =<< getArgs
  writeFile "col1.txt" $ cut 0 contents
  writeFile "col2.txt" $ cut 1 contents
  return ()

cut :: Int -> String -> String
cut n = unlines . map ((!! n) . words) . lines
