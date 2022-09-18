--Is Equal Front?       isEqFront(l1,l2)
--Definisi dan Spesifikasi
isEqFront :: [Char] -> [Char] -> Bool
isKosong :: [Char] -> Bool
{-
isEqFront menerima masukan 2 buah list of character yang tidak kosong, 
misalnya T1 dan T2 dan menghasilkan true jika potongan awal list T2 mengandung T1 
(dengan panjang dan urutan karakter yang sama). 
Banyaknya elemen T2 selalu lebih dari atau sama dengan T1.​
-}
--Realisasi
isKosong l = null l
isEqFront l1 l2 =
    if length l2 < length (l1) then False --basis
    else
        if isKosong l1 then True 
        else
            if (head l1) /= (head l2) then False 
            else isEqFront (tail l1) (tail l2) 

main = do
    print(isEqFront ['a'] ['a','b','d'])



