--Definisi dan Spesifikasi
countIf :: [Int]->(Int->Bool) -> Int 
countEven :: Int -> Bool
count0 :: Int-> Bool 
countMultOf5 :: Int -> Bool 
countCond :: Int -> Bool 
isKosong :: [Int] -> Bool
{-fungsi countIf dengan masukan sebuah list of integer dan
sebuah “fungsi” predikat yang menerima masukan sebuah integer
dan menghasilkan nilai boolean
-}
--Realisasi
isKosong l = null l
countEven l =
    if mod l 2 == 0 then True
    else False
count0 l =
    if l /= 0 then False 
    else True
countMultOf5 l =
    if mod l 5 == 0 then True
    else False
countCond l =
    if mod l 2 /= 0 then
        if mod l 3 == 0 && mod l 5 /= 0 then True
        else False
    else if mod l 2 == 0 then
        if l == 0 then True
        else if l >= 51 && l <= 100 then True
        else False
    else False 
countIf l f = 
    if isKosong l then 0
    else if f(head l) then (countIf(tail l) f) + 1 
    else (countIf(tail l) f)
main = do
    print(countIf [15,40,90,45,2,30] countCond)
