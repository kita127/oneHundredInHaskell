-- 04. 元素記号
-- “Hi He Lied Because Boron Could Not Oxidize Fluorine.
-- New Nations Might Also Sign Peace Security Clause. Arthur King Can.”
-- という文を単語に分解し，1, 5, 6, 7, 8, 9, 15, 16, 19番目の単語は先頭の1文字，
-- それ以外の単語は先頭の2文字を取り出し，
-- 取り出した文字列から単語の位置（先頭から何番目の単語か）への連想配列（辞書型もしくはマップ型）を作成せよ．

--     1  2  3    4       5     6     7   8       9         10  11      12    13   14   15    16       17      18     19   20
--     x                  x     x     x   x       x                                     x     x                       x
--     H  e  i    e       B     C     N   O       F         e   a       i     l    i    P     S        l       r      K    a
str = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."

nlist = [1, 5, 6, 7, 8, 9, 15, 16, 19]

main :: IO ()
main = do
  let wordList = words str
      numberList = [1 .. (length wordList)]
      res = zipWith solve wordList numberList
  print res

solve :: String -> Int -> (String, Int)
solve s n = if n `elem` nlist then (head s : "", n) else ((s !! 1) : "", n)
