--Definisi dan Spesifikasi
count0 :: [Int]-> Int 
isKosong :: [Int]-> Bool
{-count0  menerima sebuah list of integer dan mengembalikan banyaknya
kemunculan angka 0 pada list.-}
--Realisasi
isKosong l = null l
count0 l =
    if isKosong l then 0
    else if head l == 0 then count0(tail(l))+1
    else count0(tail(l))

main = do
    print(count0 [])

