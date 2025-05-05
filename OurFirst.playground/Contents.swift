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
