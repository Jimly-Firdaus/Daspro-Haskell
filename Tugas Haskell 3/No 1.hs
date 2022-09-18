--Menghitung Faktor X       countFaktorOfX (n,l)
--Definisi dan Spesifikasi
countFaktorOfX :: Int -> [Int] -> Int
isKosong :: [Int] -> Bool
{-
countFaktorOfX mengembalikan list faktor dari X dari list
-}
--Realisasi
-- nbElmnt l = 
--     if isEmpty(l) then 0
--     else 1 + nbElmnt(tail(l)) 
isKosong l = null l
countFaktorOfX n l =
    if isKosong l then 0 --basis
    else 
        if (mod n (head(l)) == 0) && n>=(head l) then 1 + countFaktorOfX n (tail l)
        else countFaktorOfX n (tail l)--rekurens

main = do
    print(countFaktorOfX 2 [4,5,6,7,8,10,10,12,13,14,13,13,12])
    --print(konso (head [1,2,3,4,5]))
    --print(head ([1,2,3,4,5,6]))