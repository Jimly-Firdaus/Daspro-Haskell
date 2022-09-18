--Definisi dan Spesifikasi
countEven :: [Int] -> Int
isKosong :: [Int] -> Bool
{-countEven menerima sebuah list of integer dan mengembalikan
banyaknya elemen list yang merupakan bilangan genap-}
--Realisasi

isKosong l = null l
countEven l =
    if isKosong l then 0
    else if mod (head(l)) 2 == 0 then countEven(tail(l))+1
    else countEven (tail(l))

main = do
    print(countEven [2,31,4,142,4,1,123,13,123,2])