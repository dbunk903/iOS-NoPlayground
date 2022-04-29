var myArray: [Int] = [0,1,2,3,4,5,6,7,8,9,10]

for i in myArray where i > 5 && i < 9{
    print(i)
}

for item in myArray where item % 2 == 0{
    print("짝수 : \(item)")
}
