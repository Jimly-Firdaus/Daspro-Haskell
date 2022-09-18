module BuangTujuh where
    --DEFINISI DAN SPESIFIKASI FUNGSI
    buangTujuh :: [Int] -> [Int]
    {-
    buangTujuh l membuang setiap angka yang berhubungan dengan angka 7
    Angka dalam list hanya bernilai satuan atau puluhan
    -}
    --DEFINISI DAN SPESIFIKASI SELEKTOR
    isEmpty :: [Int] -> Bool 
    --REALISASI SELEKTOR
    isEmpty l = null l
    --DEFINISI DAN SPESIFIKASI KONSTRUKTOR
    konso :: Int -> [Int] -> [Int]
    --REALISASI KONSTRUKTOR
    konso e l = [e] ++ l
    --REALISASI
    buangTujuh l = 
        if isEmpty l then []
        else if mod (head l) 10 == 7 || div (head l) 10 == 7 || mod (head l) 7 == 0 then buangTujuh(tail l)
        else konso (head l) (buangTujuh(tail l))
