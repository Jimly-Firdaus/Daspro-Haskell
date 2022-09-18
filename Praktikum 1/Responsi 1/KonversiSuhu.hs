module KonversiSuhu where
    --Konversi Suhu     konversiSuhu(t,k)
    --Definisi dan Spesifikasi
    konversiSuhu :: Float -> Char -> Float
    {-konversiSuhu digunakan untuk mengkonversi suhu dari satu satuan Celcius 
    ke satuan suhu yang lain, yaitu Fahrenheit, Reamur, atau Kelvin. 
    Berikut adalah rumus untuk melakukan konversi jika suhu dalam derajat Celcius adalah C:-}
    --Realisasi
    konversiSuhu t k 
        | k == 'R' = t*(4/5)
        | k == 'F' = t*(9/5) + 32
        | k == 'K' = t + 273.15

    main = do
        print(konversiSuhu 25 'R')
    

