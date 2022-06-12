-- 06. 集合
-- “paraparaparadise”と”paragraph”に含まれる文字bi-gramの集合を，
-- それぞれ, XとYとして求め，XとYの和集合，積集合，差集合を求めよ．
-- さらに，’se’というbi-gramがXおよびYに含まれるかどうかを調べよ．

import Data.List (group, nub, sort)

main :: IO ()
main = do
  let x = genBigram "paraparaparadise"
      y = genBigram "paragraph"
      unions = filterUnion x y
      products = filterProduct x y
      seInX = "se" `elem` x
      seInY = "se" `elem` y
  print x
  print y
  print unions
  print products
  print seInX
  print seInY

genBigram :: String -> [String]
genBigram [] = []
genBigram [_] = []
genBigram s@(x : y : _) = (x : y : "") : genBigram (tail s)

filterUnion :: [String] -> [String] -> [String]
filterUnion xs ys = nub $ xs ++ ys

filterProduct :: [String] -> [String] -> [String]
filterProduct xs ys = map head . filter (\xs -> length xs == 2) . group . sort $ nub xs ++ nub ys
