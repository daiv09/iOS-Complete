import UIKit
// ENUM- enumeration defines a common type for a group of related values
//Enum (w/o type)
enum CoffeeSize{
    case small
    case med
    case large
}
// OR
enum CoffeeType{
    case cap, latte, macchiato
}

var myKaffeeSize=CoffeeSize.med

switch myKaffeeSize {
case .small:
    print( "Price= 2.5")
case .med:
    print("Price= 3.0")
case .large:
    print("Price= 5.0")
}

enum Genre{
    case action
    case comedy
    case drama
    case romance
}
struct Movie{
    let title:String
    let year: Int?
    let genre:Genre
}
let myMovie=Movie(title: "A", year: 2023, genre: .action)

struct CoffeeOrder{
    
}

enum PaymentMethod{
    case cash
    case applePay(deviceId: Int)
    case googlePay(deviceId: Int)
    case creditCard(number: String, expiry: String, cvc: String)
}

func describingOrder(_ order: CoffeeOrder, paymentMethod: PaymentMethod) -> String {
    var description: String
    switch paymentMethod {
    case .cash:
        description = "Cash payment"
    case .applePay(deviceId: let deviceId):
        description = "Apple Pay (device ID: \(deviceId))"
    case .googlePay(deviceId: let deviceId):
        description = "Google Pay (device ID: \(deviceId))"
    case .creditCard(number: , expiry: <#T##String#>, cvc: <#T##String#>)
    }
}
let myOrder=CoffeeOrder()
let myPaymentMethod=PaymentMethod.applePay(deviceId: 123)
print(describingOrder(myOrder, paymentMethod: myPaymentMethod))
