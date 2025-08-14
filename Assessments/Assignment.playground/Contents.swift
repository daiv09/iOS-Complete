class Event{
    var eventName,location,date,organizer:String
    init(eventName: String, location: String, date: String, organizer: String) {
        self.eventName = eventName
        self.location = location
        self.date = date
        self.organizer = organizer
    }
    func scheduleEvent(){
        self.date=date
    }
    func rescheduleEvent(date:String){
        self.date=date
    }
    func displayInfo(){
        print("Event Name: \(self.eventName)")
        print(("Location: \(self.location)"))
        print(("Date: \(self.date)"))
        print(("Organizer: \(self.organizer)"))
    }
}
class Satsang:Event{
    var speakerName:String
    var bhajanList:[String]
    var duration:Double
    init(speakerName: String, bhajanList: [String], duration: Double) {
        self.speakerName = speakerName
        self.bhajanList = bhajanList
        self.duration = duration
    }
    func addBhajan(_ bhajanName: String) {
        self.bhajanList.append(bhajanName)
    }
    func displayBhajans(date:String){
        
    }
    override func displayInfo(){
        
    }
}
class Concert:Event{
    var performer,genre:String
    var ticketPrice:Double
    var seatsAvailable:[[Int]]
    init(performer: String, genre: String, ticketPrice: Double, seatsAvailable: [[Int]]) {
        self.performer = performer
        self.genre = genre
        self.ticketPrice = ticketPrice
        self.seatsAvailable = seatsAvailable
    }
}

class MeditationSession:Satsang{
     
}
class RockConcert:Concert{
    
}
