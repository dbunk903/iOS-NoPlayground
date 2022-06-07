import Foundation

var myDouble = 3.141592

// Round "to" 를 만들고 싶다면...

extension Double{
    func round(to places: Int) -> Double{
        let precisionNumber = pow(10,Double(places))
        var n = self
        n = n * precisionNumber
        n.round()
        n = n / precisionNumber
        return n
    }
}

 print(myDouble.round(to: 2))

