-- 16. ファイルをN分割する
-- 自然数Nをコマンドライン引数などの手段で受け取り，入力のファイルを行単位でN分割せよ．同様の処理をsplitコマンドで実現せよ．

import Control.Monad (void, zipWithM)
import System.Environment (getArgs)

main :: IO ()
main = do
  (l, f) <- (\(x : y : _) -> (read x, y)) <$> getArgs
  cs <- solve l <$> readFile f
  void $ outFile cs

solve :: Int -> String -> [String]
solve l = map unlines . split l . lines

split :: Int -> [a] -> [[a]]
split _ [] = []
split n ls = take n ls : split n (drop n ls)

outFile :: [String] -> IO [()]
outFile = zipWithM (\a b -> writeFile ('y' : show a) b) [1 ..]
