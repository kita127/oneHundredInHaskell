-- 18. 各行を3コラム目の数値の降順にソート
-- 各行を3コラム目の数値の逆順で整列せよ（注意: 各行の内容は変更せずに並び替えよ）．
-- 確認にはsortコマンドを用いよ（この問題はコマンドで実行した時の結果と合わなくてもよい）．
--
-- cat popular-names.txt | sort -k 3 -n -r

import Data.List (sortBy)
import System.Environment (getArgs)

main :: IO ()
main = do
  [f] <- getArgs
  contents <- readFile f
  let x = unlines . map snd . sortX . map fuga . hoge $ contents
  putStrLn x
  return ()

hoge :: String -> [String]
hoge = lines

fuga :: String -> (Int, String)
fuga s = let x = read . (!! 2) . words $ s in (x, s)

sortX :: [(Int, String)] -> [(Int, String)]
sortX =
  sortBy
    ( \(a, s1) (b, s2) ->
        let x = compare b a
         in case x of
              EQ -> compare ((head . words) s1) ((head . words) s2)
              _ -> x
    )
