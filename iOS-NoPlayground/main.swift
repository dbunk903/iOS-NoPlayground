// "Voulez-vous un café?" using LATIN SMALL LETTER E WITH ACUTE
let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"

// "Voulez-vous un café?" using LATIN SMALL LETTER E and COMBINING ACUTE ACCENT
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"

print(eAcuteQuestion)
print(combinedEAcuteQuestion)
if eAcuteQuestion == combinedEAcuteQuestion {
    print("These two strings are considered equal")
}
// These two strings are considered equal 출력
