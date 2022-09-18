module NbKelipatanX where
    --Nb Kelipatan      nbKelipatanX (m,n,x) , inc(a)
    --Definisi dan Spesifikasi
    nbKelipatanX :: Int->Int->Int->Int
    inc :: Int -> Int 
    {-nbKelipatanX menerima masukan dua buah integer positif (integer > 0), misalnya m dan n, serta sebuah integer positif lain, 
    yaitu x, dan menghasilkan banyaknya bilangan kelipatan x di antara m dan n (m dan n termasuk) dengan 
    menggunakan ekspresi rekursif.
    inc merupakan fungsi untuk mengincrement hasil yang sukses
    Prekondisi/syarat/asumsi yang berlaku adalah m <= n dan x <= n.
    -}
    --Realisasi
    inc a = 
        if a == 0 then 1 --basis
        else inc (a-1) + 1
    nbKelipatanX m n x =
        if m == n then
            if mod m n == 0 then 1
            else 0
        else if mod n x == 0 then inc (div (n-m) x)
        --else if mod n x == 0 then 
        else nbKelipatanX m (n-1) x


