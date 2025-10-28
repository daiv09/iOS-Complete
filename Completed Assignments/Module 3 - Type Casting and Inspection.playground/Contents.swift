import UIKit

class Employee{
    var name:String
    
    init(name:String){
        self.name=name
    }
    
    func work(){
        print(name+" is working")
    }
}

class Manager: Employee{
    func conductMeeting(){
        print("Manager is conducting meeting")
    }
}

class Developer:Employee{
    func writeCode(){
        print("Developer is writing code")
    }
}

class Intern: Employee{
    func learn(){
        print("Intern is making tea")
    }
}

var staff: [Employee] = [
    Manager(name: "A"),
    Developer(name: "B"),
    Intern(name: "C"),
]

for person in staff{
//    Type Inspection
    if person is Manager{
        print("\(person.name) is a Manager")
    } else if person is Developer{
        print("\(person.name) is a Developer")
    } else if person is Intern{
        print( "\(person.name) is an Intern")
    }
}
// Inheritance is also called 'is...a' relationship

print("--------------------------------------------")

for person in staff{
    if let manager=person as? Manager{
        manager.conductMeeting()
    }
    else if let developer=person as? Developer{
        developer.writeCode()
    }
    else if let intern=person as? Intern{
        intern.learn()
    }
}
print("**********************************************")

for person in staff{
    if person is Manager{
        let manager=person as! Manager
        manager.conductMeeting()
    }
//    else if let developer=person as! Developer{
//        developer.writeCode()
//    }
//    else if let intern=person as! Intern{
//        intern.learn()
//    }
}

print("---------------------------------------------")
var array:[Any]=["a",10,true]
for i in array{
    if let num=i as? Int{
        print(num+10)
    }
    
}
