hitungBiaya :: Int -> Int -> Int -> Bool -> Int
hitungBiaya k h s a =
    let biayaKamar =
                if a then
                        if k==1 then 600000
                        else if k==2 then 480000
                        else 320000
                else
                    if k==1 then 750000
                    else if k==2 then 600000
                    else 400000

        biayaDokter = 
            if a then 1350000
            else 1500000
	in
        if a then
	        biayaKamar * h + biayaDokter * s
        else biayaKamar * h + biayaDokter * s
main = do 
    print(hitungBiaya 3 5 3 False)