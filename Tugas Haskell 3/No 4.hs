--Filter Ganjil     filterGanjil(l)
--Definisi dan Spesifikasi
filterGanjil :: [Int] -> [Int]
konso :: Int -> [Int] -> [Int]
isKosong :: [Int]->Bool 
{-
filterGanjil[] menfilter integer genap sehingga hanya tersisa integer ganjil.
Asumsi elemen list positif atau 0. List mungkin kosong.
-}
isKosong l = null l
konso n l = [n] ++ l
filterGanjil l =
    if isKosong l then [] --basis
    else
        if mod (head l) 2 /= 0 then
            konso (head l) (filterGanjil(tail l))
        else (filterGanjil(tail l)) --rekurens
main = do
    print(filterGanjil [1,2,3,4,5,6,7,8,9,11,32,13])


