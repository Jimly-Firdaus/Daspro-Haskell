-- REQUIREMENT
konso :: Int -> [Int] -> [Int]
konso e l = [e] ++ l
isEmpty :: [Int] -> Bool
isEmpty l = null l
isOneElmt :: [Int] -> Bool
isOneElmt l = (length l) == 1

-- DEFINISI
-- PISAH DUA                          pisahDua(l, n)
pisahDua :: [Int] -> Int -> ([Int], [Int])
-- SPESIFIKASI
{-
  pisahDua menerima ... ....
-}
-- REALISASI
pisahDua l n
  | isEmpty l = ([], []) -- basis
  | otherwise = -- rekurens
    let
      (l1, l2) = pisahDua (tail l) n
    in
      if (head l) <= n then
        (konso (head l) l1, l2)
      else
        (l1, konso (head l) l2)

-- ALTERNATIF (tidak dianjurkan karena gak diperbolehkan)
filterKecilSamaDengan :: [Int] -> Int -> [Int]
filterKecilSamaDengan l n
  | isEmpty l = []
  | otherwise =
      if (head l) <= n then
        konso (head l) (filterKecilSamaDengan (tail l) n)
      else
        (filterKecilSamaDengan (tail l) n)

filterBesar :: [Int] -> Int -> [Int]
filterBesar l n
  | isEmpty l = []
  | otherwise =
      if (head l) > n then
        konso (head l) (filterBesar (tail l) n)
      else
        (filterBesar (tail l) n)

pisahDua2 :: [Int] -> Int -> ([Int], [Int])
pisahDua2 l n = (filterKecilSamaDengan l n, filterBesar l n)