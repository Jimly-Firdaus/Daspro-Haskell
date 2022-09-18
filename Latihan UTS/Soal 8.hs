ubahIndexGanjil :: [Int] -> [Int]
ubahIndexGenap :: [Int] -> [Int]
konso :: Int->[Int]->[Int]
konso e l = [e]++l
ubahIndexGenap l =
    if null l then []
    else if mod (head l) 2 == 0 then konso ((head l)*(-1)) (ubahIndexGenap (tail l))
    else konso (head l) (ubahIndexGenap (tail l))
ubahIndexGanjil l = 
    if length l == 1 then l
    else
    let 
        minus_smua = ubahIndexGanjil(tail l)
        new_list = konso ((head l)*(-1)) (minus_smua)
    in
        ubahIndexGenap new_list

    

main = do
    print(ubahIndexGanjil [1,2,3,4,5,7])
