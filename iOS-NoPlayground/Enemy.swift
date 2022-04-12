struct Enemy {
    var health : Int
    var attackStrength : Int
    
    init(h: Int, aS: Int){
        self.health = h
        self.attackStrength = aS
    }
    
    
    func move() {
        print("Walk forwards.")
    }
    
    mutating func takeDamage(amount: Int){
        health = health - amount
    }
    
    func attack() {
        print("Land a hit, does \(attackStrength) damage.")
    }
     
}
