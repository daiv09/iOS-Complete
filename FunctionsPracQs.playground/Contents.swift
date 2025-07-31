import Cocoa

// Function 1
func calculateArea(length: Double, width: Double)->Double{
    return length * width
}
//print(calculateArea(length: 10, width: 20))

// Function 2
func reverse(str: String)->String{
    return String(str.reversed())
}
//print(reverse(str: "Daiwiik"))

// Function 3
func factorial(num:Int)->Int{
    if num == 0 || num == 1{
        return 1
    }
    return num * factorial(num: num-1)
}
//print(factorial(num: 5))

// Function 4
func swapValues(a: inout Int, b: inout Int){
    var temp=a
    a=b
    b=temp
}
var x=10,y=20
print("Before Swapping: num1=\(x), y=\(y)")
swapValues(a: &x, b: &y)
print("After Swapping: num1=\(x), y=\(y)")

// Function 5
func palindrome(str: String)->Bool{
    return str == String(str.reversed())
}
//print(palindrome(str: "rararZ"))

// Function 6
func countVowels(in str: String)->Int{
    var ctr=0
    for ch in str{
        if ch.isLetter && ["a","e","i","o","u"].contains(String(ch).lowercased()){
            ctr+=1
        }
    }
    return ctr
}
//print(countVowels(in: "Daiwiik"))

// Function 7
func power(base:Int ,exponent: Int)->Int{
    if(exponent==1) {return base}
    return base * power(base: base, exponent: exponent-1)
}
//print(power(base: 2, exponent: 3))

// Function 8
func display(name: String="DEFAULT", age:Int=0,city:String="Pune"){
    print("Name: \(name)")
    print("Age: \(age)")
    print("City: \(city)")
}
//display()

// Function 9
func sendEmail(to recipient: String, subject: String="No Subject", message: String="Empty"){
    print("Sending email to \(recipient) with subject: \(subject) and message: \(message)")
}
//sendEmail(to: "daiwiik.harihar@mitwpu.edu.in")
//sendEmail(to: "daiwiik.harihar@mitwpu.edu.in" , subject: "Say Hello")
//sendEmail(to: "daiwiik.harihar@mitwpu.edu.in" , subject: "Say Hello", message: "Hello! Good Morning!")

// Function 10
func multiplyNumbers(_ a: Int, _ b:Int=2)->Int{
    return a*b
}
//print(multiplyNumbers(10))
//print(multiplyNumbers(10, 20))
