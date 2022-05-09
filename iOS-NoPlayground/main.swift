var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
print(airports)

var airport = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
print(airport)

if airports.isEmpty {
    print("empty")
} else{
    print("not empty")
}

airports["LHR"] = "London"
//the airpots dictionary now contains 3 items
