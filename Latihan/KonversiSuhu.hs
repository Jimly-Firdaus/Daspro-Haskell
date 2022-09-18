-- konversiSuhu :: Float -> Char -> Float 

-- konversiSuhu t c 
--     | c == 'R' = t * 4/5
--     | c == 'F' = (t * 9/5) + 32
--     | otherwise = t + 273.15
    
-- main = do
--     print(konversiSuhu 37 'F')

-- ukuranBaju :: Int -> Int -> Int 

-- ukuranBaju t b =
--     if t <= 150 then 1
--     else if t>170 && b>60 && b<80 then 3
--     else if t < 170 && t>150 then 
--         if b <= 80 then 2
--         else 3
--     else if t>170 && b <60 then 2
--     else 4
-- main = do
--     print(ukuranBaju 160 80)
    
tesKategori :: Int -> Int -> Int -> Bool 

tesKategori t b s =
    if t>100 && b <= 150 && s /= 1 && s/=0 then True 
    else if t<100 && b<=150 then
        if t > 30 && k == 2 then False
        else if t > 30 && k == 1 then True  
        else True 
    else if b>150 && t<=100 
