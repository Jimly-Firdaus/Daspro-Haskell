buatGanjil :: [Int]->[Int]
konso :: Int -> [Int] -> [Int]
konso e l = [e]++l
buatGanjil l = 
    if null l then []
    else if mod (head l) 2 == 0 then konso (head l + 1) (buatGanjil(tail l))
    else konso (head l) (buatGanjil(tail l))

main = do
    print(buatGanjil [1,2,3,5,4,3,8,10])