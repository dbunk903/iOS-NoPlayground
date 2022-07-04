import Darwin
class Bird {
    var isFemale = true
    
    func layEgg() {
        if isFemale{
            print("the bird makes a new bird in a shell.")
        }
    }
    func fly(){
        print("두 날개로 훨훨 난다")
    }
}

class Eagle : Bird{
    func soar(){
        print("독수리가 박차오른다")
    }
}

class Penguin: Bird{
    func swim(){
        print("펭귄이 첨벙첨벙 헤엄친다")
    }
}

let myEagle = Eagle()
myEagle.soar()

struct FlyingMuseum{
    func anObjectFlying(flyingObject:Bird){
        flyingObject.fly()
    }
}

let myMuseum = FlyingMuseum()
myMuseum.anObjectFlying(flyingObject: myEagle)
