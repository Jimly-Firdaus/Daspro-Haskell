
konso :: Float -> [Float] -> [Float]
konso e l = [e]++l
isEmpty :: [Float] -> Bool 
isEmpty l = null l
--Soal 1
--Definisi dan Spesifikasi
offsetList :: Float -> Float -> (Float -> Float) -> (Float -> Float) -> [Float]
-- id1 :: Float -> Float
p1 :: Float -> Float 
p2 :: Float -> Float 
{-offsetList a b f g menerima masukan dua buah fungsi, misalnya f dan g, 
serta dua buah bilangan riil (float), a dan b. Fungsi offsetList akan menghasilkan 
sebuah list of float yang merupakan penerapan fungsi f terhadap bilangan float antara a dan b, 
dimulai dari a dengan increment menggunakan fungsi g.
id x mengirimkan nilai x (id x = x) 
p1 x mengirimkan nilai x (p1 x = x + 1)
p2 x mengirimkan nilai x (p2 x = x + 2)
-}
--Realisasi
-- id x = x
p1 x = x + 1
p2 x = x + 2
-- offsetList a b f g = 
--     if a > b then []
--     else [f(a)] ++ (offsetList (g(a)) b f g)
    
-- main = do
--     print(offsetList 5.0 10.0 p1 p2)

--Soal 3
--Definisi dan Spesifikasi
sq :: Float -> Float
id :: Float -> Float
{-sq x menghasilkan nilai dari x kuadrat
id x mengirimkan nilai x
-} 
id x = x
sq x = x*x
offsetList a b f g = 
    if a > b then []
    else [g(a)] ++ (offsetList (f(a+1)) b f g)
--Aplikasi
--offsetList (0.0) 9.0 id sq
--[0.0,1.0,4.0,9.0,16.0,25.0,36.0,49.0,64.0,81.0]

--Soal 2
--Aplikasi lambda
--offsetList 1.2 7.1 (\x->x) (\x->x+2)
--[1.2,3.2,5.2]
--offsetList (-1.0) 1.0 (\x->(if (x<0) then (-999) else (x+3.2))) (\x->x+0.5)
--[-999.0,-999.0,3.2,3.7,4.2]