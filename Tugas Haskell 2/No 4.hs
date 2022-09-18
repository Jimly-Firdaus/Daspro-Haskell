--Penjumlahan Setiap Bilangan Tunggal dalam sebuah integer  sumOfDigits(x), sumOfDigitsPosNeg(y)
--Definisi dan Spesifikasi
sumOfDigits :: Int -> Int 
sumOfDigitsPosNeg :: Int -> Int 
{-sumOfDigits menjumlahkan setiap digit tunggal dalam sebuah integer x dan 
sumOfDigitsPosNeg untuk integer y yang bernilai negatif-}
--Realisasi
sumOfDigitsPosNeg y = sumOfDigits (-y)
sumOfDigits x = 
    if x < 0 then sumOfDigitsPosNeg x
    else
        if x < 10 then x --basis
        else --rekurens
            sumOfDigits(mod x 10) + sumOfDigits(div x 10)
        
main = do
    print(sumOfDigits (38))
