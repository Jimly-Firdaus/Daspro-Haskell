-- nilaiEkstrim :: [Int]->(Int,Int)
-- nilaiEkstrim l =
-- 	if length(l)==1 then (head l, head l)
--     else
-- 	    let (min,max) = nilaiEkstrim(tail l)
-- 	    in  
--             if (head l) > max then (min, head l)
--             else if (head l) < min then (head l, max)
--             else (min, max)

-- trunc :: [Int] -> Int -> [Int]
-- konso :: Int -> [Int]->[Int]
-- konso e l = [e]++l
-- trunc l x =
--     if null l then l
--     else if (x/=0) then konso (head l) (trunc (tail l) (x-1))
--     else []
    
-- splitList :: [Int] -> ([Int],[Int])
-- konso :: Int->[Int]->[Int]
-- konsDot :: [Int]->Int->[Int]
-- konsDot l e = l ++ [e]
-- konso e l = [e] ++ l
-- splitList l =
--     if null l then ([],[]) 
--     else if length (l) == 1 then (l,[])
--     else
--         let new_list = tail(init(l))
--             (lfront,lback) = splitList (new_list)
--         in
--             if null (new_list) then (lfront,lback)
--             else (konso (head l) lfront, konsDot lback(last l))

-- insSorted :: Int -> [Int] -> [Int]
-- konso :: Int -> [Int] -> [Int]
-- konso e l = [e]++l
-- insSorted x l =
--     if null l then konso x []
--     else if head l < x then konso (head l) (insSorted x (tail l))
--     else [x] ++ konso (head l) (tail l)

