let array = [6,2,3,9,4,1]

func addOne (n1:Int) -> Int{
    return n1 + 1
}

print(array.map(addOne))
print(array.map{$0*0})
print(array.map({(n1) in n1+1}))
