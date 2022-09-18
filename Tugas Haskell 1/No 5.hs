--Mengkonversikan koin quarter, dime, nickel, dan penny menjadi dollar dan sen     dolar_sen(q,d,n,p)
konversi :: Int -> Int -> Int -> Int -> Int
dolar_sen :: Int -> Int -> Int -> Int -> (Int,Int)
{-fungsi konversi mengkonversi koin quarter(25 sen = 0.25 dollar), dime(10 sen = 0.1 dollar),
nickel(5 sen = 0.05 dollar), dan penny(1 sen = 0.01 dollar) menjadi dollar dan sen 
fungsi dolar_sen menampilkan tuple dengan format (dolar,sen)
-}
--Realisasi
konversi q d n p = q*25 + d*10 + n*5 + p*1
dolar_sen q d n p = (div(konversi q d n p) 100, (konversi q d n p) `mod` 100)

main = do
    print(dolar_sen 8 20 30 77)
