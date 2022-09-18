reverseList :: [Int] -> [Int]
konso :: Int->[Int]->[Int]
konso e l = [e]++l
reverseList l =
    if null l then []
    else
        konso (last l) (reverseList(init l))
main = do
    print(reverseList [1,2,3,4])