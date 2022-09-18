makeUnique :: [Char] -> String 
konso :: Char -> [Char] -> [Char]
isKosong :: [Char] -> Bool 

isKosong l =  null l
konso e l = [e]++l
makeUnique c=
    if isKosong c then ""
    else if head c `notElem` tail c then konso (head c) (makeUnique(tail c))
    else makeUnique(tail c)
main=do
    print(makeUnique ['s','a','y','y','y','b','c'])




