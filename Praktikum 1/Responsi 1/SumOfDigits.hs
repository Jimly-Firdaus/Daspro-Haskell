module SumOfDigits where
    --SumOfDigits       sumOfDigits(n)
    sumOfDigits :: Int -> Int
    -- sumOfDigits n menghasilkan penjumlahan setiap bilangan tunggal yang membentuk n
    -- prekondisi n >= 0
    --Realisasi
    sumOfDigits n = 
        if n < 10 then n --basis
        else sumOfDigits(mod n 10) + sumOfDigits(div (n) 10) --rekurens

    main=do
        print(sumOfDigits 1234)

