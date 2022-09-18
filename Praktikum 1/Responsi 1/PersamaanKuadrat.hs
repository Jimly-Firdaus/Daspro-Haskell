module PersamaanKuadrat where
    --Persamaan Kuadrat     persamaanKuadrat(a,b,c,x)
    --Definisi dan Spesifikasi
    persamaanKuadrat :: Int -> Int -> Int -> Int -> Int 
    {-persamaanKuadrat menerima 3 buah bilangan integer (a,b,c) dan 
    sebuah nilai integer x, menghasilkan nilai persamaan kuadrat yang dibentuk 
    oleh ketiga bilangan tersebut untuk nilai x yang diberikan dengan rumus: ax^2 + bx + c-}
    --Realisasi
    persamaanKuadrat a b c x = a*(x)^2 + b*x + c