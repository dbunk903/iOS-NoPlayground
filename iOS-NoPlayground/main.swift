class Friend{
    var name : String
    func changeName(_ newName: String){
        self.name = newName
    }
    init(_ name: String) {
        self.name = name
    }
}
let myFriend = Friend("이민행")
myFriend.changeName("쩡대리")
print(myFriend.name)
