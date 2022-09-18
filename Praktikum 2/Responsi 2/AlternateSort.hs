module AlternateSort where
    --Definisi dan Spesifikasi
    sort :: [Int]->[Int]
    section_list2 :: [Int]->[Int]
    alternateSort :: [Int]->[Int]
    {-sort list berfungsi dalam mengurutkan list dari kecil ke besar
    section_list2 berfungsi membagi list dan menghasilkan elemen list 
    tanpa head dan last elemen sebelumnya
    -}

    --Realisasi
    sort []=[]
    sort list = 
        let tgh = head list
            besar = [a | a <- tail list, a>=tgh]
            kecil = [a | a <- tail list, a<tgh]
        in sort kecil ++ [tgh] ++ sort besar
        
    section_list2 list = init(tail list)
    alternateSort [] = []
    alternateSort [x] = [x]
    alternateSort l =
        let sort_list = sort l
        in [head sort_list] ++ [last sort_list] ++ alternateSort(section_list2(sort_list))
