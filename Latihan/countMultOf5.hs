import Distribution.Simple.PackageIndex (deletePackageName)
--Definisi dan Spesifikasi
countMultOf5 :: [Int] -> Int 
isKosong :: [Int] -> Bool 
{-countMultOf5 menerima sebuah list of integer dan mengembalikan
banyaknya elemen list yang merupakan kelipatan dari 5-}
--Realisasi
isKosong l = null l

countMultOf5 l =
    if isKosong l then 0
    else if mod (head l) 5 == 0 then countMultOf5(tail l) + 1
    else countMultOf5 (tail l)

main = do
    print(countMultOf5 [])
