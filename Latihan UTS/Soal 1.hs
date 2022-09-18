convertCents :: Int -> (Int,Int,Int,Int)

convertCents c = (div(c)25,
    div(mod c 25)10,
    div(mod(mod c 25)10)5,
    mod(mod(mod c 25)10)5)
main = do
    print(convertCents 627)

