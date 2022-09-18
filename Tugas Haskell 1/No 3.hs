--Apakah Date Valid?     isDateValid(d,m,y)
isDateValid :: Int -> Int -> Int -> Bool --Definisi fungsi
{-d,m,y bernilai valid jika 1<d<31 (tergantung tahun dan bulan), 0<m<12, 0<d<99-} --Spesifikasi

--Realisasi
isDateValid d m y = 
    if (1<=d && d<=31 && 1<=m && m<=12 && 0<=y && y<=99) then
        if m == 2 then
            if (y `mod` 4 /= 0 && d <= 28) then True
            else if (y `mod` 4 == 0 && d <= 29) then True
            else False
        else
            if (m == 4 || m == 6 || m == 9 || m == 11) && d <= 30 then True
            else if (m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12) && d <= 31 then True
            else False 
    else False
--Aplikasi
main = do
    print(isDateValid 31 9 10)
