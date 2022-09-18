--Menghitung Luas Bujur Sangkar  luasBS(x)
--Definisi dan Spesifikasi
luasBS :: Int -> Int 
inc :: Int -> Int 
{-luasBS menghitung luas bujur sangkar dengan panjang sisi x bulat tertentu (x>0), 
inc adalah fungsi untuk melakukan proses rekursi-}
--Realisasi
inc a = 
    if a == 0 then -1 --basis
    else inc (a-1) + 2 --rekurens
luasBS x = 
    if x == 1 then 1
    else (x-1)^2 + inc x 
--Aplikasi
main = do
    print(luasBS 3)


