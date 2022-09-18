hitungBiayaHotel :: Int -> Bool -> Int

hitungBiayaHotel m k =
    let biayatotal = 
            if k then 100000
            else 125000
    in 
        m*biayatotal
main = do
    print(hitungBiayaHotel 2 True)
