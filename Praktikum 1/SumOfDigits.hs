module SumOfDigits where
    --Penjumlahan Setiap Bilangan Tunggal       sumOfDigits(n)
    --Definisi dan Spesifikasi
    sumOfDigits :: Int -> Int 
    {-sumOfDigits n menghasilkan penjumlahan setiap bilangan tunggal yang membentuk n
    prekondisi n >= 0-}
    --Realisasi
    sumOfDigits n = 
        if n < 10 then n --basis
        else --rekurens
            sumOfDigits(mod n 10) + sumOfDigits(div n 10)
    