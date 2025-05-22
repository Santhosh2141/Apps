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

class SchoolEmployee{
    let hours: Int
    
    init(hours: Int){
        self.hours = hours
    }
    func printWork(){
        print("I work for \(hours) hours a day")
    }
}

// if you want to you can override the method of parent using override
class Teacher: SchoolEmployee {
    func work(){
        print("I take classes for \(hours) hours a day")
    }
    override func printWork() {
        print("I am the hardest worker of the School")
    }
}
// if you know that this is the final child you can use the final keyword
final class Admin: SchoolEmployee {
    func work() {
        print("I take care of the admin work for \(hours) hours a day")
    }
}

let meena = Teacher(hours: 8)
let ravi = Admin(hours: 4)
meena.work()
ravi.work()
meena.printWork()
ravi.printWork()

class Vehicle{
    let isElectric: Bool
    
    init(isElectric: Bool){
        self.isElectric = isElectric
    }
}
// the code without super.init wont work as we need to initialise the parent class in the child class as well
class Car1: Vehicle{
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let TeslaX = Car1(isElectric: true, isConvertible: false)

class User {
    var username = "Anonymous"

    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}
// this method is a deep copy if you want the users tohave a diff value

var user1 = User()
let user2 = user1.copy()
user2.username = "Taylor"
print(user1.username)
print(user2.username)

class NewUser {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}
for i in 1...3 {
    let user = NewUser(id: i)
    print("User \(user.id): I'm in control!")
}

class Animals{
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dogs: Animals {
    init(){
        super.init(legs: 4)
    }
    func speak() {
        print("I am a Dog and i bark. Bow Bow")
    }
}

final class Corgi: Dogs{
    func desc() {
        print("I am a Corgi. I have \(legs) legs")
    }
}
final class Poodle: Dogs{
    func desc() {
        print("I am a Poodle. I have \(legs) legs")
    }
}

class Cats: Animals{
    let isTame: Bool
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    func speak() {
        print("I am a cat and i purr. Meow Meow")
    }
}

final class Persian: Cats{
    func desc() {
        print("I am a Persian Cat, Am i tameable? \((isTame) ? "yes" : "no")")
    }
}

final class Lio: Cats{
    func desc() {
        print("I am a Lion, Am i tameable? \((isTame) ? "yes" : "no")")
    }
}

let cheddar = Corgi()
print(cheddar)
cheddar.desc()
cheddar.speak()
//print(cheddar.legs)
let flatty = Poodle()
print(flatty.legs)
flatty.desc()
flatty.speak()

let flash = Persian(legs: 4, isTame: true)
flash.speak()
flash.desc()

let fluffly = Lio(legs: 4, isTame: false)
fluffly.speak()
fluffly.desc()

// protocol is like a type Bool Int etc. so if anyone wants to use it they have to use all the methods and properties defined insdie it. its like a blueprint
// it doesnt have the func body

protocol Vehile {
    var name: String { get }
    // this says name is read only
    var currentPassengers: Int { get set }
    // this says it is read and write
    func estimatedTravel(for distance: Int) -> Int
    func travel(distance: Int)
}
// whatever it conforms to it has to use all the necessary funcs
struct Car2: Vehile{
    let name = "Car"
    var currentPassengers = 2
    func estimatedTravel(for distance: Int) -> Int {
        distance/20
    }
    func travel(distance: Int) {
        print("Im travelling \(distance)kms")
    }
    func sunroof(){
        print("Its a nice day")
    }
}

struct Bicycle: Vehile{
    let name = "Bicycle"
    var currentPassengers = 1
    func estimatedTravel(for distance: Int) -> Int {
        distance/10
    }
    func travel(distance: Int) {
        print("Im travelling \(distance)kms")
    }
}
func commute(distance: Int, in vehicle: Vehile){
    if vehicle.estimatedTravel(for: distance) > 100{
        print("youre having a tough day of travel")
    } else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimate(using vehicles: [Vehile], distance: Int){
    for vehicle in vehicles{
        let estimate = vehicle.estimatedTravel(for: distance)
        print("\(vehicle.name) takes \(estimate) hours for \(distance) kms")
    }
}

let car2 = Car2()
commute(distance: 100, in: car2)
let bike = Bicycle()
commute(distance: 100, in: bike)
getTravelEstimate(using: [car2,bike], distance: 300)
// now we dont need the vehicle to be car. we can have it as vehicle cuz swift knows that the obj will have the 2 methods

func getRandomNumber() -> some Equatable {
    Double.random(in: 1...10)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

//using an Equatable(opaque return type) tells swift this has a return type based on what is returned whoch can be changed over time
print(getRandomNumber() == getRandomNumber())
// equatable is a protocol. it can be a vehicle. we can return any vehicle based on what we decide.
var quote = "   The truth is rarely pure and never simple   "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)
print(quote," \n", trimmed)
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    mutating func trim() {
        self = self.trimmed()
    }
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

print(quote.trim())

// extensions extends the properties of types.
//quote.trim() creates a new data field with the changes. but we can do it inplace by using trimmed.
quote.trim()
print(quote)

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines.count)

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}
// Collection consists of Arrays, Sets, Dicts etc...

let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

protocol Person1{
    var name: String { get }
    func sayHelloPerson()
}

extension Person1{
    func sayHelloPerson() {
        print("Hi, I'm \(name)")
    }
}

struct Employees: Person1 {
    let name: String
}

let santhos = Employees(name: "Santhosh")
santhos.sayHelloPerson()
// here even tho protocol says we need the func we can use extension to bypass it by giving a default func

protocol Building{
    var rooms: Int { get }
    var cost: Int { get set }
    var estateAgent: String { get }
    mutating func saleSummary()
}

struct House1: Building {
    var rooms: Int
    var cost: Int
    var estateAgent: String
    func saleSummary() {
        print("This house has \(rooms). The price is ₹\(cost). The estate agent is \(estateAgent)")
    }
}
struct Office: Building {
    let rooms: Int
    var cost: Int
    let estateAgent: String
    
    mutating func saleSummary() {
        if rooms > 8 {
            cost += 10000
        }
        print("This office has \(rooms) rooms. The price is ₹\(cost). The estate agent is \(estateAgent)")
    }
}

var house1 = House1(rooms: 9, cost: 84_00_000, estateAgent: "CasaGrand")
house1.saleSummary()
house1.rooms = 10
house1.saleSummary()

var office = Office(rooms: 60, cost: 1_00_00_000, estateAgent: "DLF")
office.saleSummary()

var opposites = ["Mario" : "Wario", "Luigi" : "Waluigi"]

if let marioOpp = opposites["Mario"] {
    print("Marios opposite is \(marioOpp)")
}
// this is called using a optional. It the opposite it able to unwrap and give the value then execute it
var username21 : String? = nil

if let usernamePerson = username21 {
    print("Hello \(usernamePerson)")
} else {
    print("There was nothing to unwrap")
}
// when we are using optionals we always have to unwrap it by the above method.

// guard let checks if the optional has number and places it inside the optional.
//if let runs if optional has value inside. guard let runs if optional doesnt have value inside
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    print("\(number)x\(number) = \(number*number)")
}

printSquare(of: nil)

let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"] ?? "N/A"

print(new)

// this method of unwrapping is nil coelescing
struct Book {
    let title: String
    let author: String?
}
// by nil coelescing we can use it as safety when there are values not known. so if we want int of a string but sometimes an number isnt passes we can use it as 0.
let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)
let input = "5"
let number3 = Int(input) ?? 0
print(number3)

// optional chaining does of the optional has a value then excutes the nextnstep else it assigns the nil coelescent value
let b99 = [String]()
let b991 = ["Jake", "Amy", "Charles", "Rosa"]
let fave = b99.randomElement()?.uppercased() ?? "I dont like detectives"
print(fave)

let book1: Book?
book1 = Book(title: "Diary of the wimpy Kid", author: "Santhosh Srinivas")
let author1 = book1?.author?.first?.uppercased() ?? "A"
print(author1)
let boook: Book? = nil
let author2 = boook?.author?.first?.uppercased() ?? "A"
print(author2)

enum UserError: Error {
    case networkError, badId
}

func getUser1(for id: Int) throws -> String{
    if id < 10000 {
        throw UserError.badId
    } else if id == 696969 {
        throw UserError.networkError
    } else {
        return String(id)
    }
}

do {
    let validity = try getUser1(for: 696969)
    print("User is valid \(validity)")
} catch {
    print("There was an error \(error)")
}

// optional try is used only when you want code to run if there is error or not. you wont know what error it is with try?

if let valid = try? getUser1(for: 100000) {
    print("User: \(valid)")
}
// this method of nil coelescing could be used along w try?
let user3 = (try? getUser1(for: 23)) ?? "Anonymous"
print(user3)

// using guard let and unwrapping
func optional(for array: [Int]?) -> Int? {
    guard let array = array else {
        return nil
    }
    return array.randomElement()
}

if let optional = optional(for: []) {
    print(optional)
} else {
    print(Int.random(in: 1...100))
}

// using optional chaining in a line
func optional1(for array: [Int]?) -> Int {
    array?.randomElement() ?? Int.random(in: 1...100)
}

print(optional1(for: [1,2,3,4,5]))

// using closure and optional chaining
let optional2 =  { (array: [Int]?) in array?.randomElement() ?? Int.random(in: 1...100)}
print(optional2([]))
