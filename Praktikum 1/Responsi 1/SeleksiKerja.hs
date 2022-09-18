module SeleksiKerja where
    --Seleksi Kerja     seleksiKerja(m,s,p)
    --Definisi dan Spesifikasi
    seleksi :: Int->Int->Char->Bool
    {-Fungsi akan mengembalikan nilai True jika pelamar dengan pengalaman 
    managerial m dan pengalaman menjadi software engineer s melamar untuk pekerjaan p. 
    Jika kondisi tidak terpenuhi, maka akan dikembalikan nilai False.-}
    seleksi m s p 
        |(p == 'A') = (m>=2) && (s>=4)
        |(p == 'B') = (s>=4)
        |(p == 'C') = True
        |(p == 'D') = (m>=2)
