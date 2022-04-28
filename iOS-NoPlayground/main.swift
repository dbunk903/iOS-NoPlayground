import Foundation
var shoppingList = ["Eggs","Milk"]
print(shoppingList.isEmpty)
shoppingList.append("Four")
// shoppingList.count = 3
shoppingList += ["Baking Powder"]
// shoppingList.count = 4
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
// shoppingList.count = 7
print(shoppingList[4...6])
shoppingList.insert("Maple Syrup", at: 0)
print(shoppingList)
let mapleSyrup = shoppingList.remove(at: 0)
print(mapleSyrup)
