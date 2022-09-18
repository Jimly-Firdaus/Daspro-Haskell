-- sigI :: Int->Int->Int 

-- sigI a b =
--     if a > b then 0
--     else a + sigI(a+1) b

-- main = do
--     print(sigI 1 3)

-- sig3 :: Int->Int->Int

-- sig3 a b =
--     if a>b then 0
--     else (a^3) + sig3(a+1) b
-- main = do
--     print(sig3 1 3)

sp8 :: Int ->Int->Int 

sp8 a b = 
    -- if a > b then 0
    -- else (fromIntegral 1 / fromIntegral(a*(a+2))) + sp8(a+4) b
    if a > b then 0 -- Basis 0
    else -- Rekurens
    (fromIntegral 1 / fromIntegral (a * (a+2))) + sp8 (a+4) b
main = do
    print(sp8 1 3)

