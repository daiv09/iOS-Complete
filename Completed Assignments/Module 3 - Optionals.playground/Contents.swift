import UIKit

struct Student{
    var name: String
    var enrollYear: Int?
}

let firstStudent=Student(name: "Abhisekh", enrollYear: 2018)
let secondStudent=Student(name: "Anaya", enrollYear: nil)

if let unwrappedYear = firstStudent.enrollYear{
    print("Enrolled in \(unwrappedYear)")
} else{
    print("Not enrolled yet")
}

func fullName(firstName: String, middleName: String? , lastName: String){
    if let middleName=middleName{
        print("\(firstName) \(middleName) \(lastName)")
    }
    else{
        print("\(firstName) \(lastName)")
    }
}
//fullName(firstName: "Daiwiik",middleName: nil, lastName: "Harihar")

@MainActor func getURL(_ string:String)-> String?{
    if let url=URL(string:string), UIApplication.shared.canOpenURL(url){
        return "\(url)"
    }
    else{
        return nil
    }
}
let urlString="https://www.apple.com"

// Optional Chaining
struct Name{
    let age:Int
    let residence: Residence?
}
struct Residence{
    
}
