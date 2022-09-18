--Definisi dan Spesifikasi
delNthElmt :: Int -> [Char] -> [Char] 
konso :: Char -> [Char] -> [Char]
isKosong :: [Char] -> Bool 
{- delNthElmt(n,l) menghilangkan elemen ke-n dari l. ​

   Asumsi: n lebih kecil atau sama dengan jumlah elemen l. ​

   l tidak kosong. -}

--Realisasi
konso n l = [n] ++ l
isKosong l = null l
delNthElmt n l =
    if isKosong l then [] --basis
    else
        if n == 1 then delNthElmt (n-1) (tail l)
        else konso (head l) (delNthElmt (n-1) (tail l)) --rekurens
            
         

main = do
    print(delNthElmt 3 ['a','b','e','d','c'])

