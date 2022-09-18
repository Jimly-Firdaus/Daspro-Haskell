minList :: [Int]->Int 
isOneElmt :: [Int] -> Bool 

isOneElmt l = length l == 1

minList l =
    if isOneElmt l then head l
    else if (head l) >= minList(tail l) then minList(tail l)
    else head l

main = do
    print(minList [(-1),(-22),3,45,5,6,2])
