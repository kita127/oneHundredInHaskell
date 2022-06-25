-- 19. 各行の1コラム目の文字列の出現頻度を求め，出現頻度の高い順に並べる
-- 各行の1列目の文字列の出現頻度を求め，その高い順に並べて表示せよ．確認にはcut, uniq, sortコマンドを用いよ．

import Data.List (group, sort, sortBy, sortOn)
import Data.Ord
import System.Environment (getArgs)

main :: IO ()
main = do
  [f] <- getArgs
  c <- readFile f
  let res = map snd . sortBy fuga . hoge . group . sort . map (head . words) . lines $ c
  mapM_ putStrLn res

-- mapM_ putStrLn res

hoge :: [[String]] -> [(Int, String)]
hoge = map (\x -> (length x, head x))

fuga :: (Int, String) -> (Int, String) -> Ordering
fuga (xn, xs) (yn, ys) =
  let res = compare yn xn
   in case res of
        EQ -> compare ys xs
        _ -> res
