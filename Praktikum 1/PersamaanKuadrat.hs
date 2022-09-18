module PersamaanKuadrat where
    --Persamaan Kuadrat     persamaanKuadrat(a,b,c)
    --Definisi dan Spesifikasi
    persamaanKuadrat :: Int -> Int -> Int -> Int -> Int 
    {-persamaanKuadrat menghasilkan nilai persamaan kuadrat 
    yang dibentuk oleh ketiga integer a,b,c dan suatu integer x dengan rumus ax^2 + bx + c
    -}
    --Realisasi
    persamaanKuadrat a b c x = a*x^2 + b*x + c
    


