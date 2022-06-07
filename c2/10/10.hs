-- 10. 行数のカウント
-- 行数をカウントせよ．確認にはwcコマンドを用いよ．

--    lines  words   byte
--    2780   11120   55026 popular-names.txt

import System.Directory (getFileSize)
import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let fileName = head args
  contents <- readFile fileName
  let wordCnt = length . concatMap words . lines $ contents
      lineCnt = length . lines $ contents
  fileSize <- getFileSize fileName
  putStr $ showResult lineCnt wordCnt fileSize fileName

showResult :: Int -> Int -> Integer -> String -> String
showResult l w bs f = "    " ++ show l ++ "   " ++ show w ++ "   " ++ show bs ++ " " ++ f
