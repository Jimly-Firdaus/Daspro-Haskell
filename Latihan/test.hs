ls :: [Int] -> Int
ls l = 
    if null l then 0
    else head l
main = do
    print(ls [])
