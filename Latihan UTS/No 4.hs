

--Soal 1
-- isAllGanjil :: [Int]->Bool 
isEmpty :: [Int]->Bool 
isEmpty l = null l
-- --Realisasi
-- isAllGanjil l =
--     if isEmpty l then True
--     else if mod (head l) 2 == 0 then False 
--     else isAllGanjil(tail l)
-- main = do
--     print(isAllGanjil [7,3,9,15,31,19])

--Soal 2
--getSmallest :: [Int]->Int

--Realisasi

-- getSmallest l = 
--     if isOneElmt l then head l
--     else if (head l) >= getSmallest(tail l) then getSmallest(tail l)
--     else head l
                
-- main = do
--     print (getSmallest [7,3,9,15,31,19])

--Soal 3
-- delElement :: Int -> [Int] -> [Int]
-- {-delElement x l mengembalikan list l dengan elemen x yang telah dihapus dari l.
-- Jika x bukan elemen l, maka fungsi mengembalikan l semula
-- Prekondisi : elemen l unik (setiap elemen hanya muncul 1 kali.)
-- -}
-- konso :: Int -> [Int] -> [Int]
-- konso e l = [e]++l 
-- --Realisasi
-- delElement e l =
--     if isEmpty l then []
--     else if e == (head l) then delElement e (tail l)
--     else konso (head l)  (delElement e (tail l))
-- main = do
--     print(delElement 13 [7,3,9,15,31,19])

--Soal 4
sortList :: [Int] -> [Int]
getSmallest :: [Int]->Int
konso :: Int -> [Int] -> [Int]
konso e l = [e] ++ l
delElement :: Int -> [Int] -> [Int]
isOneElmt :: [Int]->Bool 
isOneElmt l = length l == 1
{-sortList l mengembalikan hasil pengurutan list l dengan elemen elemennya terurut membesar
Prekondisi l tidak kosong dan semua elemen unik
-}
delElement e l =
    if isEmpty l then []
    else if e == (head l) then delElement e (tail l)
    else konso (head l)  (delElement e (tail l))
getSmallest l = 
    if isOneElmt l then head l
    else if (head l) >= getSmallest(tail l) then getSmallest(tail l)
    else head l
sortList l = 
    if isOneElmt l then [head l]
    else [getSmallest(l)] ++ ((sortList(delElement (getSmallest l) l))) 
    
-- main = do
--     print(sortList [7,3,9,15,31,19])
    