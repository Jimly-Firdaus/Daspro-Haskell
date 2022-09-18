duapngktX :: Int -> Int 

duapngktX x = 
    if x == 0 then 1
    else 2*duapngktX(x-1)

main = do
    print(duapngktX 3)