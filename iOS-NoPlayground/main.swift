// Class Demo

let skeleton = Enemy(h: 100, aS: 15)
let dragon = Dragon(h: 100, aS: 15)
dragon.wingSpan = 5
dragon.attackStrength = 15
dragon.talk(speech: "My teeth are swords! My claws are spears! My wings are a hurricane!")
dragon.move()
dragon.attack()

