deret :: Int -> Int 

deret x = 
    if x == 1 then 5
    else deret(x-1)+2
main = do
    print(deret 5)