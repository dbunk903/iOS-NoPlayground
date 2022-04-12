class Enemy {
    var health : Int
    var attackStrength : Int
    
    init(h: Int, aS: Int){
        self.health = h
        self.attackStrength = aS
    }
    
    
    func move() {
        print("Walk forwards.")
    }
    
    func attack() {
        print("Land a hit, does \(attackStrength) damage.")
    }
     
}
