func swapping<T>(_ a:inout T, _ b: inout T){
    var temp=a
    a=b
    b=temp
}
var a=5,b=10
swapping(&a,&b)
print(a,b)
var s1="Hello",s2="World"
swapping(&s1,&s2)
print(s1,s2)

// A generic storage system- to store and load any type of files
protocol Container{
    associatedtype Item // every class/enum/struct conforming/agreeing to rules to this protocol will decide the type
    func add(_ item: Item)
    func getALL()-> [Item]
}
class IntContainer: Container{
    typealias Item=Int// typealias myDataType = dataType
    private var items: [Int] = []
    func add(_ item: Int) {
        items.append(item)
    }
    func getALL() -> [Int] {
        return items
    }
}
class StrContainer: Container{
    typealias Item=String
    private var items: [String] = []
    func add(_ item: String) {
        items.append(item)
    }
    func getALL() -> [String] {
        return items
    }
}
var intCon:IntContainer=IntContainer()
intCon.add(10)
intCon.add(20)
print(intCon.getALL())

var strCon:StrContainer=StrContainer()
strCon.add("Hello")
strCon.add("World")
print(strCon.getALL())
