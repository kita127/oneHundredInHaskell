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
  putStr . unlines . map snd . specificSort . map genPare . lines $ contents

genPare :: String -> (Int, String)
genPare s = let x = read . (!! 2) . words $ s in (x, s)

-- ソート順
-- 3列目→1列目→4列目の順で降順
--
specificSort :: [(Int, String)] -> [(Int, String)]
specificSort =
  sortBy
    ( \(a, s1) (b, s2) ->
        let x = compare b a
         in case x of
              EQ ->
                let y = compare ((head . words) s2) ((head . words) s1)
                 in case y of
                      EQ -> compare (((!! 3) . words) s2) (((!! 3) . words) s1)
                      _ -> y
              _ -> x
    )

