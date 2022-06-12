-- 05. n-gram
-- 与えられたシーケンス（文字列やリストなど）からn-gramを作る関数を作成せよ．この関数を用い，”I am an NLPer”という文から単語bi-gram，文字bi-gramを得よ．

import Control.Monad (filterM)
import System.Environment (getArgs)

-- "I am an NLPer"
-- ['I am', 'am an', 'an NLPer']
-- ['Ia', 'am', 'ma', 'an', 'nN', 'NL', 'LP', 'Pe', 'er']

main :: IO ()
main = do
  str <- head <$> getArgs
  let ws = words str
      r1 = wordNGram ws
      r2 = charNGram . concat $ ws
  print r1
  print r2

wordNGram :: [String] -> [String]
wordNGram [] = []
wordNGram [x] = []
wordNGram ss@(x : y : _) = (x ++ " " ++ y) : wordNGram (tail ss)

charNGram :: String -> [String]
charNGram [] = []
charNGram [x] = []
charNGram cs@(x : y : _) = (x : y : "") : charNGram (tail cs)
