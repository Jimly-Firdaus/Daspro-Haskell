--Apakah Jam Valid?     isJamValid(j,m,d)
isJamValid :: Int -> Int -> Int -> Bool --Definisi fungsi
{-j,m,d bernilai valid jika 0<j<23, 0<m<59, 0<d<59-} --Spesifikasi

--Realisasi
isJamValid j m d = (0<=j && j<=23) && (0<=m && m<=59) && (0<=d && d<=59) --kurung tidak terlalu penting

--Aplikasi
main = do
    print(isJamValid 23 59 59)