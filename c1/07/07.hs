-- 07. テンプレートによる文生成
-- 引数x, y, zを受け取り「x時のyはz」という文字列を返す関数を実装せよ．
-- さらに，x=12, y=”気温”, z=22.4として，実行結果を確認せよ．

import System.Environment (getArgs)

main :: IO ()
main = do
  (x : y : z : _) <- getArgs
  let res = solve x y z
  putStrLn res

solve :: String -> String -> String -> String
solve x y z = x ++ "時の" ++ y ++ "は" ++ z
