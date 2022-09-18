deleteIf :: [Int]->(Int->Bool)->[Int]
isLebih5 :: Int -> Bool
isBetween :: Int -> Bool
isEqual10 :: Int -> Bool
konso :: Int -> [Int] -> [Int]
konso e l = [e]++l
isLebih5 x = x>5
isBetween x = x>=0 && x<= 100
isEqual10 x = x/=10
deleteIf l f = 
    if null l then []
    else if f(head l) then deleteIf (tail l) f
    else konso (head l) (deleteIf (tail l) f)
main = do
    --print(deleteIf [2,3,4,1,5,6,101,10] isEqual10)
    print(deleteIf [2,3,5,4,13,3,10] (\x->x/=10))
--deleteIf [2,3,5,4,13,3] (\x->x/=10)
