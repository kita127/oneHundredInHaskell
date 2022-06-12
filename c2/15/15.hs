-- 15. 末尾のN行を出力
-- 自然数Nをコマンドライン引数などの手段で受け取り，入力のうち末尾のN行だけを表示せよ．確認にはtailコマンドを用いよ．

import System.Environment (getArgs)

main :: IO ()
main = do
  (n, f) <- (\(x : y : _) -> (read x, y)) <$> getArgs
  output <- solve n <$> readFile f
  putStr output

solve :: Int -> String -> String
solve n = unlines . reverse . take n . reverse . lines
