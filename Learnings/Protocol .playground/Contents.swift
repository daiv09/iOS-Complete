import UIKit
import Foundation

class IOS_SDP: Codable{
    var hostInstittue:String
    var cohort:String
    var size:Int
    init(hostInstittue: String, cohort: String, size: Int) {
        self.hostInstittue = hostInstittue
        self.cohort = cohort
        self.size = size
    }
}
var mit_iOS_SDP:IOS_SDP=IOS_SDP(hostInstittue: "MIT WPU", cohort: "1st", size: 100)

// For jsonEncoding the Foundation module should be imported and the class should conform to Codable
var jsonEncoder = JSONEncoder()
if let data=try? jsonEncoder.encode(mit_iOS_SDP){
    print(data)
}

//-------------------------------DELEGATES------------------------
protocol messenger{
    func passData(_ data:String)
}

class FirstView: messenger{ // Reciever
    func passData(_ data: String){	
        print("the data recieved is \(data)")
    }
}
class SecondView{ // Sender
    var delegate: messenger?
    
    func sendData(_ data:String){
        delegate?.passData(data)
    }
}
var firstView=FirstView()
var secondView=SecondView()
secondView.delegate=firstView
secondView.sendData("Hello World")

//-------------Example-----------
protocol RamuKaka{
    func passTheData(data:String)
}
class Sender{
    var delegate:RamuKaka?
    func sendData(_ data:String){
        print("Ram is sending Data: \(data)")
        delegate?.passTheData(data: data)
    }
}
class Reciever:RamuKaka{
    func passTheData(data: String) {
        print("Sita is recieving Data: \(data)")
    }
}

var ram=Sender()
var shyam=Reciever()
ram.delegate=shyam
ram.sendData("Internship Email")
