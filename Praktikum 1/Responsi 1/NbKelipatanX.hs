module NbKelipatanX where
    --Definisi dan Spesifikasi
    nbKelipatanX :: Int->Int->Int->Int
    --Realisasi
    nbKelipatanX m n x = 
        if n<=m then 
            if mod n x == 0 then 1
            else 0
        else if mod n x == 0 then (nbKelipatanX m (n-1) x) + 1 
            else nbKelipatanX m (n-1) x