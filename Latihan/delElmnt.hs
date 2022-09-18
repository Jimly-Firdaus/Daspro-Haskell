--Define
new_ls :: Char -> [Char] -> [Char]
delElement :: Int -> [Char] -> [Char]
 
new_ls x l = [x] ++ l

delElement n l =
    if n == 1 then tail(l) --basis
    else new_ls (head l) (delElement(n-1) (tail l))
main = do
    print(delElement 4 ['a','v','c','d'])