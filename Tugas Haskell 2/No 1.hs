--Deret Segitiga    deretSegitiga(n)
--Definisi dan Spesifikasi
deretSegitiga :: Int -> Int
{-deretSegitiga memberikan bilangan ke n pada deret segitiga dengan n integer dan n>0-}
--Realisasi
deretSegitiga n = 
    if n == 1 then 1 --basis
    else deretSegitiga(n-1) +  n --rekurens
--Aplikasi
main = do
    print(deretSegitiga 5)

