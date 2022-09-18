--Apakah Ganjil? isGanjil(a)
--Definisi dan Spesifikasi
isGanjil :: Int -> Bool 
{-isGanjil menerima integer a (a>=0) dan mengembalikan hasil berupa bool apakah bilangan tersebut ganjil atau bukan-}
--Realisasi
isGanjil a = 
    if a == 0 then False  --basis
    else 
        if a<0 then True 
        else --rekurens
            isGanjil(a-2) 
--Aplikasi
main = do
    print(isGanjil 23)
