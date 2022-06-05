-- 01. 「パタトクカシーー」
-- 「パタトクカシーー」という文字列の1,3,5,7文字目を取り出して連結した文字列を得よ．

main :: IO ()
main = do
  let str = "パタトクカシーー"
  putStr . map snd . filter (\(n, _) -> odd n) $ zip [1 ..] str
