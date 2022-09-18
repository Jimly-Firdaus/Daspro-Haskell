hitungBiaya :: Int -> Int -> Int -> Bool -> Int
hitungBiaya k h s a =
  let
    -- Menggunakan let, kita bisa membuat 'variabel' kaya di Pengkom
    biayaKelas =
      if k == 1 then
        750000
      else if k == 2 then
        600000
      else
        400000
    hargaDokter = 1500000
  in
    if a then
      -- Dia sebagai anggota
      round (0.8 * fromIntegral (biayaKelas * h)) + round (0.9 * fromIntegral (hargaDokter *s))
    else
      -- Kalau bukan anggota
      biayaKelas * h + hargaDokter * s

-- hitungBiaya :: Int -> Int -> Int -> Bool -> Int
-- hitungBiaya k h s a =
--   let
--     -- Menggunakan let, kita bisa membuat 'variabel' kaya di Pengkom
--     biayaKelas =
--       if a then
--         -- Harga diskon
--         if k == 1 then
--           600000
--         else if k == 2 then
--           480000
--         else
--           320000
--       else
--         -- Harga tidak diskon
--         if k == 1 then
--           750000
--         else if k == 2 then
--           600000
--         else
--           400000
--     hargaDokter = 
--       if a then
--         1350000
--       else
--         1500000
--   in
--     biayaKelas * h + hargaDokter * s
