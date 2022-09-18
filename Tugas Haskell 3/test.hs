
-- -- -- -- --Element + list
-- -- -- -- --Definisi & Spesifikasi
-- -- -- -- kons :: Char -> [Char] -> [Char]
-- -- -- -- {-kons menambah e ke dalam list
-- -- -- -- --kons(e, l) menghasilkan sebuah list dari l dan e sebagai elemen pertama: l + e -> l' 
-- -- -- -- -}
-- -- -- -- --Realisasi
-- -- -- -- kons e l = [e] ++ l

-- -- -- -- main = do
-- -- -- --     print(kons 'a' ['b','c','d','e'])

-- -- -- {-
-- -- -- konsDot(l, e) menghasilkan sebuah list dari l dan e sebagai elemen terakhir
-- -- -- -}
-- -- -- -- konsDot :: [Int] -> Int -> [Int]
-- -- -- -- konsDot l x = l ++ [x]
-- -- -- -- main = do
-- -- -- --     print(konsDot [2,3,4,5] 1)
-- -- -- --     print(last(konsDot [1,2,3,4,5] 9))

-- -- -- isKosong :: [Char] -> Bool 
-- -- -- nbELmnt :: [Char] -> Int 
-- -- -- isKosong x = null x 

-- -- -- nbELmnt l = 
-- -- --     if (isKosong l) then 0
-- -- --     else 1 + (nbELmnt (tail l))

-- -- -- main = do
-- -- --     print(nbELmnt ['a','b','c','d','e','f','g','h'])
-- -- --     print(length ['a','b','c','d','e','f','g','h'])

-- -- -- -- ls_faktor :: Int -> [Int]

-- -- -- -- ls_faktor n = 
-- -- -- --     if n == 0 then [n] ++ []
-- -- -- --     else [] ++ ls_faktor n 
    

-- -- -- -- main = do
-- -- -- --     print(ls_faktor 23)
-- -- -- --     print(ls_faktor 24)
-- -- -- --     print(ls_faktor 25)

-- -- oneElmnt :: [Int] -> Bool
-- -- oneElmnt l =  length l == 1

-- -- main = do
-- --     print(oneElmnt [1,23,13,1,1])
-- sq :: Float -> Float -> [Float]
-- konso :: Float -> [Float] -> [Float]
-- konso e l = [e]++l
-- sq a b = 
--     if a>b then []
--     else konso (a*a) (sq(a+1) b)



-- main = do
--     print(sq 1 5)
sortList :: [Int] -> [Int]
getSmallest :: [Int]->Int
konso :: Int -> [Int] -> [Int]
konso e l = [e] ++ l
delElement :: Int -> [Int] -> [Int]
isEmpty :: [Int] -> Bool 
isEmpty l = null l
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

main = do
    print(sortList [1,2,5,6,8,22,3])


