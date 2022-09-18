module HitungBensin where
    --Definisi dan Spesifikasi
    hitungBensin :: Int -> Int -> Int
    rute :: Int -> Int
    --Realisasi
    rute x = 
        if x == 1 then 0
        else if mod x 2 == 0 then rute(div(x)2) + 1
        else rute(3*x + 1) + 1
    hitungBensin a b =
        if a == b then rute a
        else 
            rute b + (hitungBensin a (b-1))


