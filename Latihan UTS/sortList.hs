
konso :: Int->[Int] ->[Int]
konso e l = [e]++l
sortList :: [Int]-> [Int]
getSmallest :: [Int]->Int
delNthElmnt :: Int -> [Int] -> [Int]
getSmallest l=
    if null l then 0
    else if length l == 1 then head l
    else if head l >= getSmallest(tail l) then getSmallest(tail l)
    else head l
delNthElmnt x l =  
    if null l then l
    else if x ==  head l then delNthElmnt x(tail l)
    else konso (head l) (delNthElmnt x(tail l))

sortList l =
    if null l then l
    else if length l == 1 then l
    else [getSmallest l] ++  sortList (delNthElmnt(getSmallest l)(l))
    
main = do
    print(sortList [3,5,7,1,2,0,-2,-1])


