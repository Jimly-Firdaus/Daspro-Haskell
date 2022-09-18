-- REQUIREMENT
konso :: Int -> [Int] -> [Int]
konso e l = [e] ++ l
konsDot :: [Int] -> Int -> [Int]
konsDot l e = l ++ [e]
isEmpty :: [Int] -> Bool
isEmpty l = null l
isOneElmt :: [Int] -> Bool
isOneElmt l = (length l) == 1

{-
  if ...
    A
  else ...
    B
-}

nilaiEkstrim :: [Int] -> (Int, Int)
nilaiEkstrim l
  | isOneElmt l = (head l, head l)
  | otherwise =
    let
      (minval, maxval) = nilaiEkstrim (tail l)
    in
      if (head l < minval) then
        (head l, maxval)
      else if (head l > maxval) then
        (minval, head l)
      else
        (minval, maxval)

trunc :: [Int] -> Int -> [Int]
trunc l i
  | isEmpty l = []
  | i == 1 = [head l]
  | otherwise =
    konso (head l) (trunc (tail l) (i - 1))

splitList :: [Int] -> ([Int], [Int])
splitList l
  | isEmpty l = ([], [])
  | isOneElmt l = (l, [])
  | otherwise =
    let
      (left, right) = splitList (init (tail l))
    in
      (konso (head l) left, konsDot right (last l))

insSorted :: Int -> [Int] -> [Int]
insSorted x l
  | isEmpty l = [x]
  | head l > x = konso x l
  | otherwise = konso (head l) (insSorted x (tail l))