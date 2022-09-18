--Sum Integer       sumInteger(m,n,f)
--Definisi dan Spesifikasi
isGenap :: Int -> Bool
gtThan5 :: Int -> Bool
sumInteger :: Int -> Int -> (Int->Bool)-> Int
{-sumInteger m n f melakukan penjumlahan dari m ke n
isGenap x menghasilkan True jika x genap dan sebaliknya.
gtThan5 x menghasilkan True jika x > 5  dan sebaliknya.
-}
--Definisi dan Spesifikasi Konstruktor
konso :: Int->[Int]->[Int]
--Realisasi Konstruktor
konso e l = [e] ++ l
{-
konso e l merupakan konstruktor list dengan e sebagai elemen pertama dan l sebagai list of integer
-}
--Realisasi
isGenap x = mod x 2 == 0 
gtThan5 x = x > 5
sumInteger m n f=
    if m > n then 0
    else if f(m) then m + sumInteger (m+1) n f
    else sumInteger (m+1) n f
--Aplikasi
--sumInteger 2 9 isGenap
--20
--sumInteger 8 2 gtThan5
--0
--Aplikasi dengan Lambda
--sumInteger 1 100 (\x->mod 100 x == 0)
--217
--sumInteger 1 100 (\x->mod x 2 == 0 && mod x 10 == 0 || mod x 2 /=0 && mod x 5 == 0)
--1050
--sumInteger 25 25 (\x->x<10)
--0