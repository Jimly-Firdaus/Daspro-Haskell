-- REQUIREMENT
konso :: Int -> [Int] -> [Int]
konso e l = [e] ++ l
isEmpty :: [Int] -> Bool
isEmpty l = null l
isOneElmt :: [Int] -> Bool
isOneElmt l = (length l) == 1

isLebih5 :: Int -> Bool
isLebih5 x = x > 5

deleteIf :: [Int] -> (Int -> Bool) -> [Int]
deleteIf l f
  | isEmpty l = []
  | otherwise =
      if not (f (head l)) then
        konso (head l) (deleteIf (tail l) f)
      else
        deleteIf (tail l) f

-- APLIKASI
-- deleteIf [2,3,4,1,5,6] (\x -> x > 5)
-- [2,3,4,1,5]
-- deleteIf [2,3,4,1,5,6,101] (\x -> x >= 0 && x <= 100)
-- [101]