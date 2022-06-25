-- 19. 各行の1コラム目の文字列の出現頻度を求め，出現頻度の高い順に並べる
-- 各行の1列目の文字列の出現頻度を求め，その高い順に並べて表示せよ．確認にはcut, uniq, sortコマンドを用いよ．

import Data.List (group, sort, sortBy)
import System.Environment (getArgs)

main :: IO ()
main = do
  [f] <- getArgs
  c <- readFile f
  let rs = map snd . sortBy specific . map (\x -> (length x, head x)) . group . sort . map (head . words) . lines $ c
  mapM_ putStrLn rs

specific :: (Int, String) -> (Int, String) -> Ordering
specific (xn, xs) (yn, ys) =
  let res = compare yn xn
   in case res of
        EQ -> compare ys xs
        _ -> res
