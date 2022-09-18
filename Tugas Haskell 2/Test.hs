-- --Menghitung suku ke-N		sukuKeN(n)
-- --Definisi dan Spesifikasi
-- sukuKeN :: Int->Int
-- {-
-- sukuKeN merupakan fungsi yang menghitung nilai ke-n dengan n >= 1 dan menghasilkan suku ke-n dari barisan 1,-7,-10,13,…
-- -}
-- --Realisasi
-- sukuKeN n = (-1)^(n-1)*(1+3*(n-1))
-- --Aplikasi
-- main = do
--     print(sukuKeN 8)
-- --sukuKeN 8
-- --(-22)

--Menghitung Take Home Pay		thp(p,d)
--Definisi dan Spesifikasi
thp :: Bool -> Int -> Int
{-
thp akan menghitung THP  yang akan diterima oleh seorang pegawai berdasarkan masukan sebuah boolean (p) yang menyatakan kategori pegawai (bernilai True untuk pegawai tetap dan False untuk pegawai kontrak) serta sebuah integer >= 0 (d) yang menyatakan jumlah hari kerja pegawai tersebut
-}
--Realisasi
thp p d = 
    if p == True then
        if d>20 then
            4000000 + 1000000 + (d-20)*100000
        else if d<15 then
            d*200000
        else
            4000000 + 1000000
    else
        if d > 20 then
            20*150000 + (d-20)*175000
        else
            d*150000
--Aplikasi
main = do
    print(thp True 25)
