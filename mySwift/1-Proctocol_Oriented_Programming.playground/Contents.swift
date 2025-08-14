protocol Animal{
    func makeSound()->String
}
extension Animal{
    func makeSound() -> String {
        return "Animal sound"
    }
}
protocol Dog:Animal{
    func makeSound()->String
}
extension Dog{
    func makeSound() -> String {
        "Woof!"
    }
}
// 1. Multiple inheritance in swift is not allowed, only single
//class Labrador:Dog, Animal{
//    override func makeSound() -> String {
//        "I am an animal and a dog"
//    }
//}
//var myLabrador:Labrador=Labrador()
//print(myLabrador.makeSound())

// 2. Structs and enums can’t participate in inheritance.
// 3. Changes in base class may cause problems
// 4. The child classes may inherit properties that are not applicable and may be unneccesary

//------------------------------------------------------------------------------------------------------------------------
// Protocol Oriented Programming
// - Works with all Structs and Enums
// - Multiple conforms

protocol Vehicles{
    func displayNumberOfWheels()
}
extension Vehicles{
    func displayNumberOfWheels() {
        print("Number of wheels: 4")
    }
}
struct Auto:Vehicles{
     func displayNumberOfWheels(){
        print("Number of vehicles: 3")
    }
}
var myAuto=Auto()
//myAuto.displayNumberOfWheels()
protocol Flying:Animal{
    func fly()
}
extension Flying{
    func fly(){
        print("I can fly")
    }
}
protocol Running:Animal{
    func run()
}
extension Running{
    func run(){
        print("I can run")
    }
}
struct Ostrich:Flying ,Running{}
struct Pigeon:Flying{}

let myOstrich=Ostrich()
let myPigeon=Pigeon()
myPigeon.fly()
myOstrich.run()

// - NO using override keyword in protocols, you can declare redirectly
// - Only declaring the function in protocol add bodies in the extension part



