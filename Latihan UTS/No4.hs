konversiSuhu :: Float -> (Float->Float) ->Float
ctoK :: Float ->Float
rtoC :: Float -> Float
ctoK t = 273+t
rtoC t = (5/4) * t
konversiSuhu t f = f(t)

main = do
    --print(konversiSuhu 16 rtoC)
    --print(konversiSuhu 25 (\x->x+273)) --Kelvin
    print(konversiSuhu 16 (\x->x*5/4)) --Reamur
