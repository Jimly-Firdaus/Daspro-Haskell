--Definisi dan Spesifikasi
ubahArah :: Int -> Int -> Int
{-pangkat s r menerima masukan berupa dua buah integer. 
Integer pertama (s) bernilai antara 0 hingga 359, merepresentasikan arah 
pergerakan sebuah benda (dalam satuan derajat). Integer kedua (r) bernilai 
antara -359 hingga 359 menyatakan besar perubahan arah pergerakan benda tersebut 
(dalam satuan derajat): nilai positif menyatakan perubahan arah ke kanan (searah jarum jam), 
sedangkan nilai negatif menyatakan perubahan arah ke kiri (berlawanan arah jarum jam). 
Fungsi akan mengembalikan bilangan integer antara 0 sampai 359, yang menyatakan arah 
pergerakan yang baru setelah diubah sebesar a derajat. Karena sudut paling besar adalah 
360 derajat, maka 360 derajat sama dengan 0 derajat.-}

--Realisasi
ubahArah s r = 
    if r >= 0 then
        if s+r < 360 then s + r
        else if s + r == 360 then 0
        else (s + r) - 360        
    else if r < 0 then
        if s+r >= 0 then s+r
        else if s+r > (-360) && s+r <= 0 then s + r + 360
        else s+r + 360
    else s + r
main = do
    print(ubahArah 38 (-359))
--Aplikasi
--ubahArah 359 359
--358
--ubahArah 358 (-359)
--359