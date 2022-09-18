setIntersect :: [Int]->[Int]->[Int]
konso :: Int->[Int]->[Int]
isKosong :: [Int]->Bool

konso e l = [e]++l
isKosong l = null l
setIntersect l1 l2 =
    if isKosong l1 || isKosong l2 then []
    else if (head l1) `elem` l2 then [head l1] ++ setIntersect(tail l1) l2
    else (setIntersect (tail l1) l2)

main = do
    print(setIntersect [2,4,6,8,10] [1,3,5])




