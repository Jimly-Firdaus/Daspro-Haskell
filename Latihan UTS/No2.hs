ekstrakTanda :: [Int]->[Int]
konso :: Int->[Int]->[Int]
konso e l = [e]++l
ekstrakTanda l =
    if null l then []
    else if head l > 0 then konso 1 (ekstrakTanda (tail l))
    else if head l < 0 then konso (-1) (ekstrakTanda (tail l))
    else konso 0 (ekstrakTanda (tail l))
main = do
    print(ekstrakTanda [80,1,0,-1,3,-13])
