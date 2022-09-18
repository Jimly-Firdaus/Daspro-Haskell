--Menjumlahkan semua elemen dalam list      sumIsiList(l)
--Definisi dan Spesifikasi
sumIsiList :: [Int] ->  Int
isKosong :: [Int] -> Bool
inc :: Int -> Int 
{-sumIsiList[] menjumlahkan semua elemen dalam list.
Asumsi isi list integer dan list tidak kosong
-}
--Realisasi
isKosong l = null l
inc n = n
sumIsiList l = 
    if isKosong l then 0 --basis
    else 
        inc(head l) + inc(sumIsiList(tail l)) --rekurens

main = do
    print(sumIsiList [7,7,7,7,7])
        
                
        

