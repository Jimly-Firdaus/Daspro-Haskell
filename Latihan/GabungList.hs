import Distribution.SPDX (LicenseId(Unicode_DFS_2015))

gabungList :: [Int]->[Int]->[Int]
konso :: Int->[Int]->[Int]
isKosong :: [Int] -> Bool
sort' :: [Int]->[Int]
-- --Realisasi
isKosong l = null l
konso e l = [e]++l
-- --l2 sudah terurut
-- gabungList l1 l2 =
--     if isKosong l1 && isKosong l2 then []
--     else if isKosong l1 then l2
--     else if isKosong l2 then
--         if head l1 <= head(gabungList (tail l1) l2) then konso (head l1) (gabungList (tail l1) l2)
--         else gabungList (tail l1) l2
--     else if head (gabungList (tail l1) l2) <= head (gabungList l1 (tail l2)) then
-- main = do
--     print(gabungList [1,2,3] [4,5,6])
sort' [] = []
sort' l1 =
    let small = sort' [a|a <- tail l1, a<=head l1]
        big = sort' [a|a<-tail l1, a>head l1]
    in small ++ [head l1] ++ big
gabungList l1 l2 = 
    let l3 = l1 ++ l2
    in sort' l3

main = do
    print(gabungList [1,3,0,4] [-9,-1,4])



