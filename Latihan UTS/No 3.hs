--Definisi dan Spesifikasi
pangkat :: Int -> Int -> Int
{-pangkat a b menerima masukan berupa dua buah integer, a dan b, 
dan mengembalikan hasil berupa a^b (a pangkat b). Masukan diasumsikan 
selalu valid, yaitu a > 0 dan b ≥ 0.-}

--Realisasi
pangkat a b =
    if b==0 then 1 --Basis
    else a * (pangkat a (b-1)) --Rekurens

--Aplikasi
--pangkat 2 0
--1
--pangkat 3 3
--27