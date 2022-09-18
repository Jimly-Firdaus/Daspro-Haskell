--Definisi dan Spesifikasi
offsetList :: [Int] -> (Int->Int) -> [Int]
plus2 :: Int -> Int
konso :: Int -> [Int] -> [Int]
minus1 :: Int -> Int
offKond :: Int -> Int
isKosong :: [Int] -> Bool
{-
offsetList yang menerima masukan sebuah list of integer yang melakukan “offset” atau 
perubahan nilai terhadap elemen list sesuai dengan aturan tertentu (yang ditentukan oleh
sebuah fungsi offset) dan menghasilkan list baru dengan elemen hasil offset.
Dengan fungsi offset plus2, akan menghasilkan list baru dengan nilai setiap elemen 
yang sudah bertambah 2
Dengan fungsi offset minus1, akan menghasilkan list baru dengan 
nilai setiap elemen yang sudah berkurang 1
Dengan fungsi offset offKond, akan menghasilkan list baru dengan nilai 
setiap elemen yang diubah sesuai ketentuan range tertentu
-} 
{-
offset perubahan nilai terhadap elemen list dan
menghasilkan list baru dengan elemen hasil offset
plus2 menghasilkan list baru dengan nilai setiap
elemen yang sudah bertambah 2
minus1 menghasilkan list baru dengan nilai setiap
elemen yang sudah berkurang 1
offKond menghasilkan list baru dengan nilai setiap
elemen yang diubah sesuai ketentuan range tertentu
-}

--Realisasi
isKosong l = null l
konso e l = [e]++l
minus1 l = l-1
plus2 l= l+2
offKond i
    | i >= 0 && i <= 40 = 10
    | i>=41 && i<=60 = 5
    | i>=61 && i<=89 = 3
    | i>89 = 1
    | otherwise = 0
offsetList l offset =
    if isKosong l then []
    else konso (offset(head l)) (offsetList (tail l) offset)

main = do
    print(offsetList [55,23,0,1,76] offKond)





