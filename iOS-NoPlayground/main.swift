import Foundation

public func solution(_ S : inout String, _ P : inout [Int], _ Q : inout [Int]) -> [Int] {
    var res = [Int]()
    //1,2,3,4
    //A,C,G,T
    let ary = Array(S)
    var A = Array(repeating: 0, count: S.count)
    var C = Array(repeating: 0, count: S.count)
    var G = Array(repeating: 0, count: S.count)
    var T = Array(repeating: 0, count: S.count)
    
    if ary[0] == "A"{
        A[0] += 1
    } else if ary[0] == "C"{
        C[0] += 1
    } else if ary[0] == "G"{
        G[0] += 1
    } else {
        T[0] += 1
    }
    if S.count > 1{
        for i in 1...S.count-1{
            if ary[i] == "A"{
                A[i] = A[i-1] + 1
                C[i] = C[i-1]
                G[i] = G[i-1]
                T[i] = T[i-1]
            } else if ary[i] == "C"{
                A[i] = A[i-1]
                C[i] = C[i-1] + 1
                G[i] = G[i-1]
                T[i] = T[i-1]
            } else if ary[i] == "G"{
                A[i] = A[i-1]
                C[i] = C[i-1]
                G[i] = G[i-1] + 1
                T[i] = T[i-1]
            } else{
                A[i] = A[i-1]
                C[i] = C[i-1]
                G[i] = G[i-1]
                T[i] = T[i-1] + 1
            }
        }
    }
    // index 0
    for i in 0...P.count-1{
        if P[i] <= 0{
            if A[Q[i]] > 0{
                res.append(1)
            } else if C[Q[i]] > 0{
                res.append(2)
            } else if G[Q[i]] > 0{
                res.append(3)
            } else {
                res.append(4)
            }
        } else{
            if A[Q[i]] > A[P[i]-1]{
                res.append(1)
            } else if C[Q[i]] > C[P[i]-1]{
                res.append(2)
            } else if G[Q[i]] > G[P[i]-1]{
                res.append(3)
            } else {
                res.append(4)
            }
        }
        
    }
    return res
}

var S = "CAGCCTA"
var P = [2,5,0]
var Q = [4,5,6]
print(solution(&S, &P, &Q))
