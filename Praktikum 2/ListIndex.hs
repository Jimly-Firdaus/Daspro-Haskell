module ListIndex where
    --Definisi dan Spesfikasi
    listIndex :: [Int] -> (Int -> Char) -> [Char]
    fIndex :: Int -> Char
    konso :: Char -> [Char] -> [Char]
    isEmpty :: [Int] -> Bool
    -- isEmpty l true jika list of character l kosong
    {-
    konso e lc menghasilkan sebuah list of character dari e (sebuah character)  
    dan lc (list of character), dengan e sebagai elemen pertama: e o lc -> lc'
    listIndex : sebuah list of integer, misalnya l
    sebuah fungsi yang menerima masukan sebuah integer dan menghasilkan sebuah char, misal f
    Fungsi listIndex akan menghasilkan sebuah list of character yang melambangkan nilai-nilai indeks dari suatu list nilai integer.
    Misal fungsi f akan mengembalikan nilai B untuk range nilai [70,80], maka nilai 75 akan secara otomatis diubah menjadi 'B' oleh fungsi f.
    -}
    --Realisasi
    konso e l = [e]++l
    isEmpty l = null l

    fIndex x =
        if x>=80 && x<=100 then 'A'
        else if x>=70 && x<80 then 'B'
        else if x>=65 && x<70 then 'C'
        else if x>=55 && x<65 then 'D'
        else 'E'

    listIndex l f = 
        if isEmpty l then []
        else konso (f(head l)) (listIndex(tail l)f)
