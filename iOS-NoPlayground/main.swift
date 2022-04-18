let greeting = "Hello, World!"
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<index]
// beginning : Hello
print(beginning)
// SubString인 beginning을 String으로 변환
let newString = String(beginning)
print(newString)
