import Foundation

//1. Create an array of numbers and Remove duplicates from an array
func removeDuplicates(){
    let array:[Int] = [1,2,2,3,3,3,4,4,4,4,5,5,5,5,5,6,6,6,6,6,6,7,7,7,7,7,7,7,8,8,8,8,8,8,8,8,9,9,9,9,9,9,9,9,9,10,10,10,10,10,10,10,10,10,10]
    var uniqueValues: Set<Int> = []
    var resultArray: [Int] = []
    
    for value in array {
        if !uniqueValues.contains(value) {
            uniqueValues.insert(value)
            resultArray.append(value)
        }
    }
    print(resultArray)
}
removeDuplicates()

//2. create array of strings, and Count total vowels in an array of strings
func countVowels(){
    let arrayOfStrings: [String] = ["Apple", "Banana", "Cupcake", "Dinosaur"]
    var totalVowels: Int = 0
    
    for string in arrayOfStrings {
        let lowerCasedString = string.lowercased()
        for character in lowerCasedString {
            switch character{
                case "a","e","i","o","u":
                totalVowels += 1
            default:
                break
            }
        }
    }
    print(totalVowels)
}
countVowels()

//3. create array of strings and Group words by their length example : ["hi", "apple", "car", "no"]
//expected output : [2: ["hi", "no"], 5: ["apple"], 3: [“car"]]
func groupWordsByLength(){
    let arrayOfStrings: [String] = ["hi", "apple", "car", "no"]
    var groupedWords: [Int: [String]] = [:]
    
    for string in arrayOfStrings {
        let wordLength = string.count
        if groupedWords[wordLength] == nil {
            groupedWords[wordLength] = [string]
        } else {
            groupedWords[wordLength]?.append(string)
        }
    }
    print(groupedWords)
}
groupWordsByLength()

//4. create a dictionary and Remove students with grade < 40
func removeStudentWithGradeLessThan40(){
    var dictionary:[String:Int]=["A":90,"B":50,"C":30,"D":20]
    var ansDictionary: [String: Int] = [:]
    for (name, marks) in dictionary{
        if marks>40{
            ansDictionary[name] = marks
        }
    }
    print(ansDictionary)
}
removeStudentWithGradeLessThan40()

//5. find the Max number in each row of 2D array
func findMaxNumberInEachRow(){
    var myArray:[[Int]]=[[2,3,4],[3,1,2],[5,4,3]]
    var maximum:[Int]=[]
    for i in 0..<myArray.count{
        var max=Int.min
        for j in 0..<myArray.count{
            if max<myArray[i][j]{
                max=myArray[i][j]
            }
        }
        maximum.append(max)
    }
    print(maximum)
}
findMaxNumberInEachRow()

//6. create a number array , and group even and odd numbers and store it in dictionary
func groupingInDictionary(){
    var myArray:[Int]=[1,2,3,4,5,6,7,8,9,10]
    var myDictionary:[String:[Int]]=["Even":[],"Odd":[]]
    for i in myArray{
        if i%2 == 0 { // odd number
            myDictionary["Even"]?.append(i)
        }
        else{
            myDictionary["Odd"]?.append(i)
        }
    }
    print(myDictionary)
}
groupingInDictionary()

//7.create an array and Count frequency of each word in an array
func countFrequencyOfWords(){
    var myArray:[String]=["Apple","Banana","Banana","Apple","Banana","Apple","Banana","Melon"]
    var myDictionary:[String:Int]=[:]
    for i in myArray{
        myDictionary[i, default: 0] += 1
    }
    print(myDictionary)
}
countFrequencyOfWords()

//8. create a dictionary with key and value pair. Replace values with their squared value
func replaceValuesWithSquaredValue(){
    var myDictionary:[String:Int]=[:]
    myDictionary["Apple"]=2
    myDictionary["Banana"]=5
    myDictionary["Jackfruit"]=7
    for (fruit, quantity) in myDictionary{
        myDictionary[fruit]=quantity*quantity
    }
    print(myDictionary)
}
replaceValuesWithSquaredValue()

//9.create a dictionary, Update all values by multiplying them by 10
func replaceValuesWithTenTimesValue(){
    var myDictionary:[String:Int]=[:]
    myDictionary["Apple"]=2
    myDictionary["Banana"]=5
    myDictionary["Jackfruit"]=7
    for (fruit, quantity) in myDictionary{
        myDictionary[fruit]=10*quantity
    }
    print(myDictionary)
}
replaceValuesWithTenTimesValue()

//10.Remove a specific key from the dictionary only if its value == 0
func removeValueEqualToZero(){
    var myDictionary:[String:Int]=[:]
    myDictionary["Apple"]=2
    myDictionary["Banana"]=5
    myDictionary["Watermelon"]=0
    for (fruit, quantity) in myDictionary{
        if quantity==0 {
            myDictionary.removeValue(forKey: fruit)
        }
    }
    print(myDictionary)
}
removeValueEqualToZero()
