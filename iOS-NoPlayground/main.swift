// 학교 - 초, 중, 고
enum School {
//    case elementary
//    case middle
//    case high
    case elementary, middle, high
}

let yourSchool = School.high
//print(yourSchool)
print("yourSchool: ",yourSchool)

enum Grade:Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.second
print("yourGrade: ",yourGrade.rawValue)

enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    func get() -> String{
        switch self {
        case .elementary(let name):
            return name
        case .middle(let name):
            return name
        }
    }
}

let yourMiddleSchoolName = SchoolDetail.middle(name: "정대리중학교")
print(yourMiddleSchoolName.get())
