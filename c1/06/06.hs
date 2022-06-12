-- 06. 集合
-- “paraparaparadise”と”paragraph”に含まれる文字bi-gramの集合を，
-- それぞれ, XとYとして求め，XとYの和集合，積集合，差集合を求めよ．
-- さらに，’se’というbi-gramがXおよびYに含まれるかどうかを調べよ．

import Data.List (group, intersect, nub, sort, union, (\\))

main :: IO ()
main = do
  let x = sort $ genBigram "paraparaparadise"
      y = sort $ genBigram "paragraph"
      unions = sort $ nub x `union` nub y
      products = sort $ nub x `intersect` nub y
      difference = sort $ nub x \\ nub y
      seInX = "se" `elem` x
      seInY = "se" `elem` y
  print x
  print y
  print unions
  print products
  print difference
  print seInX
  print seInY

genBigram :: String -> [String]
genBigram [] = []
genBigram [_] = []
genBigram s@(x : y : _) = (x : y : "") : genBigram (tail s)
