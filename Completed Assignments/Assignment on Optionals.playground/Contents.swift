import UIKit

struct Address {
    var street: String
    var city: String
}

class Student {
    var name: String
    var age: Int
    var address: Address?
    
    init?(name: String, ageString: String, address: Address?) {
        if let ageInt = Int(ageString) {
            self.name = name
            self.age = ageInt
            self.address = address
        } else {
            return nil
        }
    }
}

func printStudentInfo(student: Student?) {
    if let student = student {
        print("Name: \(student.name)")
        print("Age: \(student.age)")
        if let city = student.address?.city {
            print("City: \(city)")
        } else {
            print("City: Not available")
        }
    } else {
        print("Invalid student")
    }
}

let addr = Address(street: "MG Road", city: "Pune")
let s1 = Student(name: "A", ageString: "21", address: addr)
let s2 = Student(name: "B", ageString: "20", address: nil)
printStudentInfo(student: s1)
printStudentInfo(student: s2)

