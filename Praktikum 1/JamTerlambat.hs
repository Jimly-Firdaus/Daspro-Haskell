module JamTerlambat where
    --Jam Terlambat     jamTerlambat(j,m,d)
    --Definisi dan Spesifikasi
    jamTerlambat ::  Int -> Int -> Int -> (Int,Int,Int,Bool,Int)
    {-jamTerlambat menerima input tiga buah bilangan integer yang merepresentasikan jam (0..23), menit (0..59), detik (0..59)
    dan mengembalikan tuple yang terdiri atas selisih waktu input dengan waktu mulai, terlambat atau tidak, dan tingkat kekecewaan penonton
    -}
    --Realisasi
    jumlahDetik j m d =
        (j*3600 + m*60 + d - 30600)
    jamTerlambat j m d = 
        if (j*3600 + m*60 + d)>(30600) then
            (div(mod (jumlahDetik j m d) 86400) 3600,
            div (mod (mod (jumlahDetik j m d) 86400) 3600) 60,
            mod (mod (mod (jumlahDetik j m d) 86400) 3600) 60,
            True, (jumlahDetik j m d)*10 
            )
        else (div(mod ((jumlahDetik j m d)*(-1)) 86400) 3600,
            div (mod (mod ((jumlahDetik j m d)*(-1)) 86400) 3600) 60,
            mod (mod (mod ((jumlahDetik j m d)*(-1)) 86400) 3600) 60,
            False, (jumlahDetik j m d)*0 
            )


