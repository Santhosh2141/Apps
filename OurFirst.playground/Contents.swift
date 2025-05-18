import Cocoa

var greeting = "Hello, playground"
print(greeting)
var name = "Santhosh"
print(greeting+" "+name)
let lastName = "\"Lakshmanan\" Srinivas"
//lastName = "Lakshmanan"
// let is a contant
print(lastName)
print(lastName.count)
print(name.uppercased())

var number = 120
print(number.isMultiple(of: 6))

let num1 = 0.1
let num2 = 0.2
print(num1+num2)

var gameOver = true
print(gameOver)
gameOver.toggle()
print(gameOver)
gameOver = !gameOver
print(gameOver)

var sentence = "Hi I am \(name) \(lastName). I am 20 years old"
print(sentence)

//var input = InputStream/("Enter a value");
//print(input)/

var cel = 10.0
print("Celcius: " + String(cel)+"°")
print("Farenheit: " + String((cel*9/5)+32)+"°")

var arr = [1,2,3,4]
print(arr)
arr.append(20)
arr.remove(at: 2)
print(arr)

var score = Array<Int>()
score.append(94)
score.append(85)
print(score)

var albums = [String]()
albums.append("Folklore")
albums.append("World War X")
albums.append("Timeless")
print(albums[1])
print(albums.contains("Folklore"))
print(albums.sorted())
print(albums.reversed())

let employee = [ "name":"Taylor Swift", "age" : "30"]
print(employee["name", default: "unknown"])
//var playList = [ "name": "Eminem","song":"Mockingbird","year":2005 ]
//print(playList["name", default: "unknown"])

var names = Set(["santhosh","srinivas","meena"])
print(names)
names.insert("madhu")
print(names)

var newSet = Set<String>()

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
print(day)

var array = ["Declan Rice", "Bukayo Saka", "Martin Odegaard", "Ben White", "Bukayo Saka"]
print(array.count)
print(array)
print(Set(array))

let age = 18

if age > 18 {
    print("youre older than 18")
} else if age < 18 {
    print("youre less than 18")
} else {
    print("youre 18")
}

enum Operation {
    case sum, difference, multiply, divide
}

let operation = Operation.sum
switch operation {
case .sum:
    print("SUM")
    fallthrough
case .difference:
    print("SUBTRACT")
case .multiply:
    print("MULTIPLY")
case .divide:
    print("DIVIDE")
default:
    print("NOT AN OPERATION")
}
let age1 = 18
let value = age >= 18 ? true : false

// includes 12
// 1..<5 excludes 5
for i in 1...12 {
    print("5 times \(i) is \(5*i)")
}

for i in 1...100{
    if i.isMultiple(of: 3) && i.isMultiple(of: 5){
        print("FizzBuzz")
    } else if i.isMultiple(of: 3){
        print("Fizz")
    } else if i.isMultiple(of: 5){
        print("Buzz")
    } else {
        print(i)
    }
}
print("hi")

func rand() -> Int {
    let val = Int.random(in: 1...10)
    return val
}

let val = rand()
print(val)

func printTables(number: Int){
    for i in 1...12{
        print("\(number) * \(i) = \(number*i)")
    }
}

printTables(number: 3)

func returnSame(string1: String, string2: String) -> Bool {
    let string1 = string1.sorted()
    let string2 = string2.sorted()
    return (string1 == string2 ? true : false)
}

let same = returnSame(string1: "santhosh", string2: "santhosh")

func pythTheo(a: Double, b: Double) -> Double{
    sqrt(a*a + b*b)
}

let res = pythTheo(a: 3, b: 4)
print(res)

//tuples can be used to return multiple values and the parameters are used to know which value is which
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Santhosh", lastName: "Srinivas")
}

let user = getUser()
print("Hi \(user.firstName)\(user.lastName)")

//we can use _ to not use a name in the function parameter

func isUpperCase(_ string: String)-> Bool{
    string == string.uppercased()
}
let string = "HELL"
let result = isUpperCase(string)
print(result)

func printTables(for number: Int, end: Int = 12){
    for i in (1...end){
        print("\(number) * \(i) = \(i*number)")
    }
}
printTables(for: 5)

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {throw PasswordError.short}
    if password == "12345" {throw PasswordError.obvious}
    return "Good"
    
}
let pwd = "1234"
do{
    let result = try checkPassword(pwd)
    print(result)
} catch {
    print("There was an error \(error.localizedDescription)")
}

enum SqrtError: Error{
    case smallNum, largeNum, noRoot
}
func checkSqrtFor(_ number: Int) throws -> Int{
    if number < 1 {throw SqrtError.smallNum}
    if number > 10000 {throw SqrtError.largeNum}
    
    for root in (1...100){
        if (root*root == number) {
            return root
        }
    }
    throw SqrtError.noRoot
}

let square = 0
do {
    let result = try checkSqrtFor(square)
    print(result)
} catch SqrtError.smallNum{
    print("Number is less than 1")
} catch SqrtError.largeNum{
    print("Number is more than 10_000")
} catch SqrtError.noRoot{
    print("Number doesnt have a perfect root")
}

// closure to directly run a function
// in marks the end of the parameters and start of body
// closures cant take parameters
let sayHello = { (name: String)  in
    print("Hello \(name)")
}

sayHello("Santhosh")

func getUserData(for id: Int) -> String{
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Not Taylor"
    }
}

let data: (Int) -> String = getUserData

let person = data(1989)
print(person)

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

// sorted takes 2 parameters name1 and name2 and returns a Bool to sort which is taken first

let captainFirstTeam1 = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2 // this means normal sorting order. name1 > name2 means reverse sort
})
print(captainFirstTeam1)

// shorter way as its known
let captainFirstTeam2 = team.sorted{ a,b in
    if a == "Suzanne" {
        return true
    } else if b == "Suzanne" {
        return false
    }

    return a < b // this means normal sorting order. name1 > name2 means reverse sort
}
let captainFirstTeam3 = team.sorted{
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }

    return $0 < $1 // this means normal sorting order. name1 > name2 means reverse sort
}

let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)
let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}

//the closure is function parameter that is passed
let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

print(rolls)

func generateNumber() -> Int {
    Int.random(in: 1...20)
}

// we can also pass the function instead
let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}
// if we have multiple functions we do it like this
doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

luckyNumbers.filter{ $0 % 2 != 0}.sorted{ $0 < $1}.map{ "\($0) is a lucky Number"}.forEach{print($0)}

let month = ["Oct" : "10"]
var date_string_arr = [String]()
let dates = ["20th Oct 2052"]
for date in dates{
    var  date_string = ""
    let date_arr = date.components(separatedBy: " ")
    date_string += date_arr[2]
    date_string += "-"
    date_string += month[date_arr[1]] ?? "00"
    date_string += "-"
    if date_arr[0].count > 3 {
        date_string += date_arr[0]
        
    } else{
        date_string += date_arr[0]
    }
    date_string.removeLast()
    date_string.removeLast()
    date_string_arr.append(date_string)
}

date_string_arr.forEach{print($0)}

struct Album{
    let title: String
    let artist: String
    let year: Int
    
    func printAlbum(){
        print("\(title) by \(artist) in \(year)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
red.printAlbum()

print(red.year)

struct Employee{
    var name: String = "Anounymous"
    var vacationRemaining: Int = 14
    // by defult all variables are const in struct. so if we are updating we need to use
    //mutating infront of the function
    mutating func takeHolidays(days: Int){
        if vacationRemaining > days {
            vacationRemaining -= days
            print("Hey \(name), You have \(vacationRemaining) days remaining")
        } else {
            print("You dont have enough days to take off")
        }
    }
    var vactaionTotal = 14
    var vacationTaken = 0
    // we can use dynamically computing variables instead.
    var vacationRemaining1: Int {
        
        // usually we dont set values inside a dynamic variable. but it is possible.
        // swift provides a vallue called newValue to set a value to a variable
        get{
            vactaionTotal-vacationTaken
        }
        set{
            vactaionTotal = vacationTaken + newValue
        }
    }
}

var pam = Employee(name: "Pamela Beasley", vacationRemaining: 25)

pam.takeHolidays(days: 8)

var jim = Employee(name: "Jim Halpert")

jim.vacationTaken += 4
print(jim.vacationRemaining1)
jim.vacationTaken += 4
print(jim.vacationRemaining1)
jim.vacationTaken += 4
jim.vacationRemaining1 = 5
// this calculates vataionTotal as vacTaken = 4+4+4 + newValue(VacRem=5) = 17
print(jim.vactaionTotal)

struct Game{
    var score = 0{
        didSet{
            print("New score is \(score)")
        }
    }
}

// didSet runs whenever the score is changed
var player1 = Game()
player1.score += 4
player1.score -= 2
player1.score += 6

struct App{
    var contacts = [String](){
        willSet{
            print("Current Value is: \(contacts)")
            print("New Value will be: \(newValue)")
        }
        didSet{
            print("There are totally \(contacts.count) contacts")
            print("There were \(oldValue.count) contacts")
        }
    }
}

var app1 = App()
app1.contacts.append("Dwight Schrute")
app1.contacts.append("Jake Peralta")
app1.contacts.append("Amy Santiago")

// initializers are special functions and in this func all should be initialised
// once you use init, you cant use the default initializer given by swift
struct Player {
    var name: String
    var number: Int
    
    init(name: String){
        self.name = name
        number = Int.random(in: 1...70)
    }
}

var player2 = Player(name: "Charles Boyle")
print(player2.number)

struct BankAccount {
    private var funds = 0
    mutating func deposit(amount: Int){
        funds += amount
    }
    mutating func withdrawal(amount: Int) -> Bool {
        if funds <= amount {
            return false
        } else{
            funds -= amount
            return true
        }
    }
}

var account = BankAccount()
account.deposit(amount: 1000)
let txn = account.withdrawal(amount: 1000)
if txn {
    print("Transaction Successful")
} else {
    print("Transaction Failed")
}
// we can directly access funds ooutsidee but it isnt desireable. so we use private keyword
// private(set) is best as you can read it but not alter it outside.

//static is used when the value should be used everytime and not created as a new instance whenever we call the stuct
struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}
School.add(student: "Taylor Swift")
print(School.studentCount)


// here we use Self instead of self. Self is a dataType for calling the struct while self is to indicate a variable.

struct Person {
    static var population = 0
    var name: String
    init(personName: String) {
        name = personName
        Self.population += 1
    }
}

var people = Person(personName: "Santhosh")
print(Person.population)


enum GearAction{
    case up, down
}
struct Car{
    let model: String
    let noOfSeats: Int
    static let maxGear = 6
    static let lowGear = 0
    private(set) var currentGear = 0 {
        didSet{
            print("The current gear is \(oldValue)")
            print("The new gear will be \(currentGear)")
        }
    }
    init(model: String, noOfSeats: Int){
        self.model = model
        self.noOfSeats = noOfSeats
    }
    mutating func updateGear(changeTo changeToGear: Int){
        if changeToGear > Self.maxGear {
            print("This gear value doesnt exist")
        } else if changeToGear < Self.lowGear {
            print("You cant go lower than neutral")
        } else {
            currentGear = changeToGear
        }
    }
    mutating func shiftGear(_ gear: GearAction){
        switch gear {
            case .up:
                (currentGear < Self.maxGear) ? currentGear += 1 : print("This is the max Gear")
            case .down:
            (currentGear > Self.lowGear) ? currentGear -= 1 : print("Bye")
        }
    }
}

var i10Nios = Car(model: "Grand i10 Nios", noOfSeats: 5)
print(i10Nios)
i10Nios.updateGear(changeTo: 5)
i10Nios.updateGear(changeTo: 7)

var xF = Car(model: "Jaguar XF", noOfSeats: 5)
print(xF)
xF.updateGear(changeTo: 5)
xF.updateGear(changeTo: -1)
i10Nios.noOfSeats

xF.shiftGear(GearAction.up)
xF.shiftGear(GearAction.up)
xF.shiftGear(GearAction.down)
i10Nios.shiftGear(GearAction.up)
i10Nios
xF
