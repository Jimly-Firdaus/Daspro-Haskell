--Mencari Nilai Tengah   nilaiTengah(a,b,c)
--Defenisi dan Spesifikasi
nilaiTengah :: Int -> Int -> Int -> Int
{-nilaiTengah berfungsi mencari nilai tengah dari 3 bilangan a b c-}
--Realisasi
nilaiTengah a b c = 
    if (a > b && a > c) then
        if (b > c) then
            b
        else
            c
    else if (a>b && a<c) then a
    else
        if (b > c) then
            c
        else
            b
main = do
    print(nilaiTengah (-1) (-4) 10)

