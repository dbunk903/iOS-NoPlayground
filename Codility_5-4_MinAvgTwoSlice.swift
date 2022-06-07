import Foundation

public func solution(_ A : inout [Int]) -> Int {
    var minIdx = 0
    var minAvg:Float = Float(A.reduce(0, +))
    print(minAvg)
    for i in 2...A.count-1{
        print("i : \(i)")
        // three elements
        var avg : Float = Float(A[i-2] + A[i-1] + A[i]) / 3.0
        if avg < minAvg{
            minIdx = i-2
            minAvg = avg
            print("3 minidx : \(minIdx)")
            print("3 minavg : \(minAvg)")
        }
        // two elements
        avg = Float(A[i-1] + A[i]) / 2.0
        if avg < minAvg{
            minIdx = i-1
            minAvg = avg
            print("2 minidx : \(minIdx)")
            print("2 minavg : \(minAvg)")
        }
    }
    return minIdx
}


var A = [4, 2, 2, 5, 1, 5, 8]
print(solution(&A))

