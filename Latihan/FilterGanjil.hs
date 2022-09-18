
filterGanjil :: [Int]->[Int]
konso :: Int->[Int]->[Int]
isKosong :: [Int]->Bool
konso e l = [e]++l
isKosong l = null l
filterGanjil l = 
    if isKosong l then []
    else if mod (head l) 2 == 0 then filterGanjil(tail l)
    else konso (head l) (filterGanjil(tail l))
main = do
    print(filterGanjil [])
