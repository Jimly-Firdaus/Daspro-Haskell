sigma :: Int -> Int -> (Int->Int) -> Int 
sigI :: Int -> Int 
sig3 :: Int -> Int 

sigI a = a + 1

sig3 a = a^3

sigma a b fsig =
    if a > b then 0
    else fsig(a) + sigma(a+1) b fsig


main = do
    print(sigma 1 3 sigI)
