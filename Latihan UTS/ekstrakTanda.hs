-- REQUIREMENT
konso :: Int -> [Int] -> [Int]
konso e l = [e] ++ l
isEmpty :: [Int] -> Bool
isEmpty l = null l
isOneElmt :: [Int] -> Bool
isOneElmt l = (length l) == 1

ekstrakTanda :: [Int] -> [Int]
ekstrakTanda l
  | isEmpty l = []
  | otherwise =
    if (head l == 0) then
      konso 0 (ekstrakTanda (tail l))
    else if (head l < 0) then
      konso (-1) (ekstrakTanda (tail l))
    else -- head l > 0
      konso 1 (ekstrakTanda (tail l))