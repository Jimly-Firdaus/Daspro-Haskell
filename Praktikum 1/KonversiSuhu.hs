module KonversiSuhu where
    --Konversi Suhu     konversiSuhu(t,k)
    --Definisi dan Spesifikasi
    konversiSuhu :: Float -> Char -> Float 
    {-konversiSuhu mengkonversi suhu dari satu satuan Celcius ke satuan suhu yang lain
    , yaitu Fahrenheit, Reamur, atau Kelvin.
    -}
    --Realisasi
    konversiSuhu t k =
        if k == 'R' then t*4/5
        else if k == 'F' then (9/5 * t) + 32
        else t + 273.15

