-- 16. ファイルをN分割する
-- 自然数Nをコマンドライン引数などの手段で受け取り，入力のファイルを行単位でN分割せよ．同様の処理をsplitコマンドで実現せよ．

import Control.Monad (void, zipWithM)
import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let l = read $ args !! 0
      f = args !! 1
  cs <- hoge l <$> readFile f
  void $ out (length cs) cs

hoge :: Int -> String -> [String]
hoge l = aaa l . lines

aaa :: Int -> [String] -> [String]
aaa _ [] = []
aaa l ss = unlines (take l ss) : aaa l (drop l ss)

out :: Int -> [String] -> IO [()]
out len = zipWithM (\a b -> writeFile ('y' : show a) b) [1 .. len]
