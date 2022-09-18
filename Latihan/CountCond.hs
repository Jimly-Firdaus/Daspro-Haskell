--Definisi dan Spesifikasi
countCond :: [Int] -> Int 
isKosong :: [Int] -> Bool 
{-countCond menerima sebuah list of integer dan mengembalikan banyaknya elemen
list yang memenuhi kondisi berikut:
• Untuk bilangan ganjil: habis dibagi tiga tapi tidak habis dibagi 5
• Untuk bilangan genap: bernilai antara 51 hingga 100
• Sama dengan 0-}
--Realisasi
isKosong l = null l

countCond l =
    if isKosong l then 0
    else if mod (head l) 2 /= 0 then
        if mod (head l) 3 == 0 && mod (head l) 5 /= 0 then countCond(tail l) + 1
        else countCond (tail l)
    else if mod (head l) 2 == 0 then
        if head l == 0 then countCond (tail l) + 1
        else if head l >= 51 && head l <= 100 then countCond (tail l) + 1
        else countCond (tail l)
    else countCond (tail l)
main = do
    print(countCond [3])



