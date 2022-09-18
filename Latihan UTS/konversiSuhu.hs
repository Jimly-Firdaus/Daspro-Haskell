konversiCtoK :: Float -> Float
konversiCtoK t = t + 273

konversiRtoC :: Float -> Float
konversiRtoC t = 5 / 4 * t

konversiSuhu :: Float -> (Float -> Float) -> Float
konversiSuhu t f =
  f t

-- Contoh realiasi
-- 1. Konversi t dalam C ke dalam K
-- konversiSuhu 0 (\t -> t + 273) = 273
-- 2. Konversi t dalam R ke dalam C
-- konversiSuhu 20 (\t -> 5 / 4 * t) = 25