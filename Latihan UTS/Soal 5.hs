
count8 :: Int -> Int 

count8 x =
    if div x 10 < 10 && mod x 10 == 8 then 2
    else if div x 10 < 10 && mod x 10 /=8 then 0
    else if mod x 10 == 8 then count8(div (x) 10)+1
    else count8(div x 10)

main = do
    print(count8 888)