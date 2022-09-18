countIf :: [Int]->(Int->Bool) -> Int
isKosong :: [Int] -> Bool

isKosong l = null l
countIf l f = 
    if isKosong l then 0
    else if f(head l) then (countIf(tail l) f) + 1 
    else (countIf(tail l) f)
main = do
    print(countIf [15,40,90,45,2,30] (\x->((mod x 2) /= 0 && mod x 3 == 0 && mod x 5/=0)||((mod x 2) == 0 && (x == 0 || (x >= 51 && x<=100)))))