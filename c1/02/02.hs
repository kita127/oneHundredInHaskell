-- 02. 「パトカー」＋「タクシー」＝「パタトクカシーー」
-- 「パトカー」＋「タクシー」の文字を先頭から交互に連結して文字列「パタトクカシーー」を得よ．

main :: IO ()
main = do
  let a = "パトカー"
  let b = "タクシー"
  let res = concat $ zipWith (\a b -> a : b : "") a b
  putStr res
