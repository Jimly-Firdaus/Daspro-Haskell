--Menghitung Jumlah Detik     jumlahDetik(j,m,d)
--Defenisi dan Spesifikasi
jumlahDetik :: Int -> Int -> Int -> Int 
{-jumlahDetik menghitung jumlah total Detik pada jam ybs
j,m,d bernilai valid jika 0<j<23, 0<m<59, 0<d<59
-}

--Realisasi
jumlahDetik j m d = j*3600 + m*60 + d --kurung tidak terlalu penting

--Aplikasi
main = do
    print(jumlahDetik 10 20 35)
    