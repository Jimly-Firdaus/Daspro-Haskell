--Penjumlahan rentang a hingga b   sumRange(a,b)
--Definisi dan Spesifikasi
sumRange :: Int -> Int -> Int
{-sumRange(a,b) menjumlahkan semua nilai antara a hingga b (b>=a) 
dengan basis a=b, a dan b bilangan bulat positif-}
--Realisasi
sumRange a b = 
    if (b == a) then a --basis
    else b + sumRange a (b-1) --rekurens
--Aplikasi
main = do
    print(sumRange 2 3)

