let precomposed: Character = "\u{D55C}"                        // 한
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"    // ㅎ, ㅏ,ㄴ
  // precomposed : 한, decomposed 한

print(precomposed, decomposed)

let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"
  // regionalIndicatorForUS : 🇺🇸

print(regionalIndicatorForUS)
