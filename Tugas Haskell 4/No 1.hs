--Filter List       filterList(l, filter)
--Definisi dan Spesifikasi
isPos :: Int -> Bool
isNeg :: Int -> Bool
isKabisat :: Int -> Bool
filterList :: [Int] -> (Int->Bool)-> [Int]
{-filterList l f melakukan penyaringan terhadap elemen list dan menghasilkan elemen baru yang lolos kriteria
isPos l menghasilkan True jika l positif dan sebaliknya.
isNeg l menghasilkan True jika l negatif dan sebaliknya.
isKabisat menghasilkan True jika kategori kabisat terpenuhi dan sebaliknya
-}
--Definisi dan Spesifikasi Konstruktor
konso :: Int->[Int]->[Int]
--Realisasi Konstruktor
konso e l = [e] ++ l
{-
konso e l merupakan konstruktor list dengan e sebagai elemen pertama dan l sebagai list of integer
-}
--Realisasi

isPos l = l >= 0
isNeg l = l < 0
isKabisat l = mod l 4 == 0
filterList l f=
    if null l then []
    else if f(head l) then konso (head l) (filterList(tail l) f)
    else (filterList(tail l) f)

--Aplikasi dengan fungsi filterList dan parameter fungsi isPos,isNeg, dan isKabisat
--filterList [4,8,10,12,1,-1,2,3,-2,-10,-1] isPos
--[4,8,10,12,1,2,3]
--filterList [4,8,10,12,1,-1,2,3,-2,-10,-1] isNeg
--[-1,-2,-10,-1]
--filterList [4,8,10,12,1,-1,2,3,-2,-10,-1] isKabisat
--[4,8,12]
--Aplikasi dengan Lambda
-- filterList [4,8,10,12,1,-1,2,3,-2,-10,-1] (\x->x>=0)
--[4,8,10,12,1,2,3]
-- filterList [4,8,10,12,1,-1,2,3,-2,-10,-1] (\x->x<0)
--[-1,-2,-10,-1]
-- filterList [4,8,10,12,1,-1,2,3,-2,-10,-1] (\x->mod x 4 == 0)
--[4,8,12]