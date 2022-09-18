konso :: Int -> [Int]-> [Int]
pisahDua :: Int -> [Int] -> ([Int],[Int])
konso e l = [e]++l
pisahDua n l = 
    if null l then ([],[])
    else
        let 
            (l1,l2) = pisahDua n (tail l)
        in
            if (head l) > n then (l1,konso (head l) l2)
            else (konso (head l) l1, l2)
main=do
    print(pisahDua 3 [7,6,3,2,1])
