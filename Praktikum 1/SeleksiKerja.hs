module SeleksiKerja where

    --Seleksi Kerja     seleksi(m,s,p)
    --Definisi dan Spesifikasi
    seleksi :: Int->Int->Char->Bool 
    {-Fungsi akan mengembalikan nilai True jika pelamar dengan pengalaman managerial m dan pengalaman menjadi software engineer s melamar untuk pekerjaan p. 
    Jika kondisi tidak terpenuhi, maka akan dikembalikan nilai False
    -}
    --Realisasi
    seleksi m s p =
        if m >= 2 && s>=4 then True
        else if m<2 then
            if s>=4 && p=='B' then True 
            else if s<4 && p=='C' then True 
            else False 
        else if m>=2 && s<4 && p=='D' then True 
        else p=='C'


