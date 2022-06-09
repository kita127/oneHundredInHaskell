-- 14. 先頭からN行を出力
-- 自然数Nをコマンドライン引数などの手段で受け取り，入力のうち先頭のN行だけを表示せよ．確認にはheadコマンドを用いよ．

import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let n = read . head $ args
      fileName = args !! 1
  contentsN <- initN n <$> readFile fileName
  putStrLn contentsN

initN :: Int -> String -> String
initN n = unlines . take n . lines
