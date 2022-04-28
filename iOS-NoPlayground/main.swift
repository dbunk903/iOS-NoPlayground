let dogString = "Dog!!🐶"
for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator: "")
}
print("")
// 68 111 103 226 128 188 240 159 144 182

for scalar in dogString.unicodeScalars {
    print("\(scalar) ")
}
// D
// o
// g
// !!
// 🐶
