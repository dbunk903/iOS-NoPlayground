for i in 0..<5{
    print(i)
}
print("---------------------------")
for i in 0...5 where i%2 == 0{
    print(i)
}


var randomInts = [Int]()

for _ in 0..<25 {
    let randomNumber = Int.random(in: 1...100)
    randomInts.append(randomNumber)
    print(randomInts)
}
