module ListOfInteger where
    --Definisi dan Spesifikasi
    nbOcc :: [Int]->Int->Int
    isKosong :: [Int]-> Bool 
    {-nbOcc l xmenerima masukan sebuah list of integer, misalnya l, 
    dan sebuah integer, misalnya x, dan menghasilkan berapa 
    banyak kemunculan x pada list of integer l. l mungkin kosong.-}
    --Realisasi
    isKosong l = null l
    nbOcc l x =
        if isKosong l then 0
        else if head l == x then (nbOcc(tail l) x) + 1
        else (nbOcc(tail l) x)


