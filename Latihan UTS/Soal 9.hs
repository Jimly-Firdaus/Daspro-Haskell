splitAlternate :: [Int] -> ([Int],[Int])
konso :: Int->[Int]->[Int]
konso e l = [e]++l
splitAlternate l =
    if null l then ([],[])
    else
        let 
            (ganjil,genap) = splitAlternate(tail l)
        in
            if length l == 1 then 
                if mod (head l) 2 == 0 then (ganjil, konso (head l) genap)
                else (konso (head l) ganjil, genap) 
            else if mod (head l) 2 == 0 then (ganjil, konso (head l) genap)
            else (konso (head l) ganjil, genap)
main=do
    print(splitAlternate [1,2,3,4,5,6,7])


