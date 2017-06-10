import UIKit

// 01 Знакомство с Playground
var str = "Hello, playground"
let y = 10
var x = y + 10
for i in 1..<10 {
    print("i равен \(i)")
}
let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
label.backgroundColor = UIColor.red
label.text = str
label.layer.cornerRadius = 50
label.layer.masksToBounds = true
label

// 02 Константы и переменные
var str = "Hello, playground"
var str1 = "Hello, Steve"

str = "Hello, Xcode"
str1 = "Hello, Tim"

// 03 Типы данных
 Character, String, Int, Double, Float, Bool
let x: Character = "q"
let y: String = "Russian Federation"
let z: Double = 1.000_050_000_123_123
let w: Float = 1.000006
let d: Int = 123
let b: Bool = true // false

let r = "false"
let f = Int(123.123)
let v = Float(123.12213423244433)

// 04 Базовые операторы
 оператор присваивания =
let a = "Hello, World!"

// арифметические операторы + - / *
let b = 1 + 2
let c = 10 / 2

// оператор остатка %
let d = 100 % 3

// составные операторы += -+ /= *=
let e = 1
var f = 0
f += e
//f = f + e
f += 1
f -= 1
f *= 10
f /= 5

// операторы сравнения <= >= != == < >
let g = 10
let h = 11
g > h
g != h

// оператор заменяющий nil ??
let defaultName = "Steve"
var name: String? = nil
let myName = name ?? defaultName

// унарный оператор -, тернарный оператор
-5

let bool = true
let t = bool ? 10 : 30

// логические операторы && || !
let temp = 10
let wind = 3

if temp >= 10 && wind <= 5 {
    print("!")
}

let bool1 = true
let bool2 = !bool1

// операторы диапазона ... ..<
1...10
1..<10

// 05 Интерполяция строк
let temperature = 12
let windSpeed = 5
let weatherDescription = "Temperature is about 12˚C above zero and wind speed is about 5 m/s"
let weatherDescriptionI = "Temperature is about \(temperature)˚C above zero and wind speed is about \(windSpeed) m/s"

let string = "\(1 + 2)" + "\(2 + 3)"

// 06 Массивы
let arrayOne = Array<Int>()
let arrayTwo = [Int]()
var arrayThree: [Int] = []
let arrayFour = [1, 2, 3, 4]
let arrayFive = [Int](repeatElement(10, count: 6))

arrayThree += arrayFive
arrayThree

arrayFour[2]
arrayThree[1...3] = [15]
arrayThree

arrayThree.count - 1
arrayThree.append(100)
arrayThree.insert(105, at: 2)

arrayThree.remove(at: 4)
arrayThree

arrayThree.removeFirst()
arrayThree

let deletedValue = arrayThree.removeLast()
deletedValue
arrayThree

arrayThree.reverse()

// 07 Словари
let dictOne = Dictionary<String, String>()
let dictTwo = [String: String]()
let dictThree: [String: String] = [:]
var namesAges = ["Ivan"     : 30,
                 "Vitalik"  : 30,
                 "Sasha"    : 25]

namesAges.count
namesAges.isEmpty

namesAges["Ivan"] = 35
namesAges

let deletedAge = namesAges.updateValue(40, forKey: "Ivan")
namesAges

namesAges["Ivan"] = nil
namesAges

let deletedValue = namesAges.removeValue(forKey: "Sasha")
namesAges

namesAges.removeAll() // namesAges = [:]

// 08 Множества
let setOne = Set<String>()
let setTwo: Set<String> = []
var setThree: Set = [1, 2, 3, 4]

setThree.insert(5)
setThree.insert(6)
setThree.insert(7)

setThree.isEmpty
setThree.count
setThree.remove(6)
setThree

let boolValue = setThree.contains(1)
boolValue

let setFromOneToThree: Set = [1, 2, 3, 4]
let setFromFourToNine: Set = [1, 2, 4, 5, 6, 7, 8, 9]

let allValuesArray = setFromOneToThree.union(setFromFourToNine).sorted()

let commonValuesSet = setFromOneToThree.intersection(setFromFourToNine)

let notRepeatedValuesArray = setFromOneToThree.symmetricDifference(setFromFourToNine).sorted()
let substractedValuesArray = setFromOneToThree.subtracting(setFromFourToNine).sorted()

// 09 Инструкция if
let a = 3
let b = 1

if a == b {
    print("a equals to b")
} else if a < b{
    print("b exceeds a by \(b - a)")
} else if b < a{
    print("a exceeds b by \(a - b)")
}

let isSunny = true
var action = ""

if isSunny {
    action = "I will go for a walk"
} else {
    action = "I will sit at home"
}

action = isSunny ? "I will go for a walk" : "I will sit at home"

// if a != b
// if a <= b
// if a >= b
// if a > b
// if a < b
// ~=

if 1...4 ~= b {
    print("Hello world")
}

if a == b {
    
}

let c = 5

if (c == 2 && a == 10) || c == 6 {
    print("Hello coder")
} else {
    print("!!!")
}

// 10 Инструкция guard
func someFunc(a: Int, b: Int) {
    
    guard a == b else { return }
    // some code to run
    guard b == 11 else { return }
    // some code to run
    
    if a == b {
        // some code to run
        if b == 11 {
            // some code to run
        }
    }
}

for i in 1...5 {
    guard i != 3 else { break }
    print(i)
}

for i in 1...5 {
    if i == 3 {
        break
    }
    print(i)
}

// 11 Инструкция switch
let totalScore = 20

if totalScore == 10 {
    print("you're not jedi")
} else if totalScore == 20 {
    print("you're still not jedi")
} else if totalScore == 100 {
    print("you're jedi")
}

switch totalScore {
case 10, 20: print("you're not jedi")
    fallthrough
case 50..<100: print("you're almost jedi")
case 100: print("you're jedi")
default: break
}

// 12 Цикл for-in
let array = [1, 2, 3, 4]
let arrayOfStrings = ["a", "b", "c"]
for i in arrayOfStrings {
    //print(i)
}

let string = "some string"

for char in string.characters {
    //print(char)
}

let nameAndFingers = ["Ivan": 20, "Svetlana": 18, "Nadejda": 15]
for (name, numberOfFingers) in nameAndFingers {
    //print("Pyro name is \(name) and number of fingers \(numberOfFingers)")
}

for (index, value) in arrayOfStrings.enumerated() {
    //print(index, value)
}

for i in stride(from: 0, through: 15, by: 5) {
    print(i)
}

// 13 Циклы while, repeat-while
var timer = 5
print("Counting down")

while timer > 0 {
    print(timer)
    timer -= 1
}
print("Start!")

var timer = 5
print("Counting down")

repeat {
    print(timer)
    timer -= 1
} while timer > 0
print("Start!")

// 14 Функции
// 1. простая функция, ничего не принимающая и ничего не возвращающая

func sayHello() {
    print("Hello")
}

sayHello()

// 2. функция, принимающая один параметр

func oneParam(param: Int) {
    var param = param
    param += 1
}

oneParam(param: 11)

// 3. функция, не принимающая параметров, но возвращающая значение

func returnValue() -> Int {
    return 10
}

let a = returnValue()
a

// 4. функция, принимающая несколько параметров и возвращающая значение

func giveMeYour(name: String, andSecondName: String) -> String {
    return "Your full name is \(name) \(andSecondName)"
}

giveMeYour(name: "Ivan", andSecondName: "Akulov")


// 5. функция, принимающая массив в качестве параметра и использующая вложенную функцию для работы
func calcMoneyIn(array: [Int]) -> Int {
    
    var sum = 0
    func sayMoney() {
        print(sum)
    }
    
    for item in array {
        sum += item
    }
    
    sayMoney()
    return sum
}

calcMoneyIn(array: [1, 2, 3, 4, 5])

// 6. функция, которая принимает переменное число параметров

func findSum(ofIntegers integers: Int...) -> Int {
    
    var sum = 0
    
    for item in integers {
        sum += item
    }
    return sum
}

findSum(ofIntegers: 1, 2, 3, 4, 5, 6)

// 7. имена параметров функции

func sum(_: Int) -> Int {
    return 10
}

// 8. функция в качестве возвращаемого значения

func whatToDo(missed: Bool) -> (Int) -> Int {
    func missCountUp(input: Int) -> Int { return input + 1 }
    func missCountDown(input: Int) -> Int { return input - 1 }
    
    return missed ? missCountUp : missCountDown
}

var missedCount = 0
missedCount = whatToDo(missed: true)(missedCount)
missedCount = whatToDo(missed: false)(missedCount)

// 15 Замыкания или клоужеры
func whateverFunc() {
    print("Hello, World!")
}

let closure = {
    print("Hello, World!")
}

func repeatThreeTimes(closure: () -> ()) {
    for _ in 0...2 {
        closure()
    }
}

repeatThreeTimes {
    () -> () in
    print("Hello, World!")
}

let unsortedArray = [123, 2, 32, 67, 8797, 432]
let sortedArray = unsortedArray.sorted {
    (number1: Int, number2: Int) -> Bool in
    return number1 < number2
}

// 16 Кортежи
let one = 1
let two = 2
let three = 3

(one, two, three)

let boy = (5, "Sergey")
boy.0
boy.1

let (first, second, third) = (1, 2, 3)
first
second
third

let greenPencil = (color: "green", length: 20, weight: 4)
greenPencil.color
greenPencil.length
greenPencil.weight
let (greenColor, greenLength, greenWeight) = greenPencil

let agesAndNames = ["Misha": 29, "Kostya": 90, "Mira": 30]

var age = 0
var name = ""

for (nameInD, ageInD) in agesAndNames {
    if age < ageInD {
        age = ageInD
        name = nameInD
    }
}

age
name

// 17 Опционалы
var fuel: Int?
fuel = 20
//fuel = nil

//print("\(fuel!) liters left")

if let avaliableFuel = fuel {
    print("\(avaliableFuel) liters left")
} else {
    print("no fuel data avaliable")
}

func checkFuel() {
    guard let avaliableFuel = fuel else {
        print("no fuel data avaliable")
        return
    }
    print("\(avaliableFuel) liters left")
}

checkFuel()

// 18 Классы
class Human {
    var name = "Ivan"
    var age: Int? = 30
    var hairs = true
    
    func description() -> String {
        if let humanAge = age {
            return "Hello! My name is \(name) and I'm \(humanAge) years old!"
        } else {
            return "Hello! My name is \(name)!"
        }
    }
}

var humanOne = Human()
humanOne.name = "Natasha"
humanOne.name
humanOne.description()

let humanTwo = Human()
humanTwo.hairs = false
humanTwo.name = "Jack"
humanTwo

//humanOne = humanTwo
humanOne.name

var array = [Human]()
array.append(humanOne)
array.append(humanTwo)

// 19 Инициализаторы
class Human {
    var name: String
    var age: Int?
    var hairs: Bool

    func description() -> String {
        if let humanAge = age {
            return "Hello! My name is \(name) and I'm \(humanAge) years old!"
        } else {
            return "Hello! My name is \(name)!"
        }
    }
    
    init() {
        name = "Ivan"
        hairs = true
    }
    
    init(name: String, age: Int?, hairs: Bool) {
        self.name = name
        self.age = age
        self.hairs = hairs
    }
}

var human = Human()
human.age
human.name
human.hairs

let human1 = Human(name: "Jason", age: 40, hairs: true)

// 20 Наследование
class Human {
    // properties
    var name: String
    
    // method
    func tellAboutMe() -> String {
        return "Hello! My name is \(name)"
    }
    
    // initializer
    init(name: String) {
        self.name = name
    }
}

class Child: Human {
    var toy = "Horse"
    
    override func tellAboutMe() -> String {
        let originalText = super.tellAboutMe()
        return "\(originalText) And I have a toy \(toy)"
    }
    
    init(toy: String, name: String) {
        self.toy = toy
        super.init(name: name)
    }
    
    override init(name: String) {
        self.toy = "Hummer"
        super.init(name: name)
    }
}

let child = Child(name: "Klava")
child.tellAboutMe()
child.name
child.toy

let child1 = Child(toy: "Dinosaur", name: "Max")
child1.tellAboutMe()

// 21 Вычисляемые свойства
class Rectangular {
    let height: Int
    let width: Int
    let depth: Int
    
    var volume: Int {
        return height * width * depth
    }
    
    init(height: Int, width: Int, depth: Int) {
        self.height = height
        self.width = width
        self.depth = depth
    }
}

let rect = Rectangular(height: 10, width: 12, depth: 13)
rect.volume

class Person {
    var name: String
    var secondName: String
    
    var fullName: String {
        get {
            return name + " " + secondName
        }
        
        set {
            let array = newValue.components(separatedBy: " ")
            guard array.count > 1 else { return }
            name = array[0]
            secondName = array[1]
        }
    }
    
    init(name: String, secondName: String) {
        self.name = name
        self.secondName = secondName
    }
}

let person = Person(name: "Ivan", secondName: "Akulov")
person.fullName

person.name
person.secondName
person.fullName = "Zinaida Petrova"
person.name
person.secondName

// 22 Свойства классов
class Car {
    // properties
    let products: Int
    let people: Int
    let pets: Int
    class var selfWeight: Int { return 1500 }
    class var maxWeight: Int { return 2000 }
    
    // computed property
    var totalWeight: Int {
        return products + people + pets + Car.selfWeight
    }
    
    // initializer
    init(products: Int, people: Int, pets: Int) {
        self.products = products
        self.people = people
        self.pets = pets
    }
}

let car = Car(products: 30, people: 500, pets: 50)
let maxWeight = Car.maxWeight
let carWeight = Car.selfWeight
let totalWeight = car.totalWeight

if maxWeight < totalWeight {
    print("You can't drive it because car is overloaded: \(totalWeight - maxWeight)")
} else {
    print("You can drive!")
}

// 23 Ленивые свойства
func bigDataProcessingFunc() -> String {
    return "very long process"
}

class Processing {
    let smallDataProcessing = "small data processing"
    let averageDataProcessing = "average data processing"
    lazy var bigDataProcessing = bigDataProcessingFunc()
}

let process  = Processing()
process.bigDataProcessing
process

// 24 Наблюдатели свойства
class SecretLabEmployee {
    var accessLevel = 0 {
        willSet {
            print("new boss is about to come")
            print("new access level is \(newValue)")
        }
        didSet {
            if accessLevel > 0 {
                accessToDB = true
            } else {
                accessToDB = false
            }
            print("new boss just come")
            print("last time I had access level \(oldValue)")
        }
    }
    
    var accessToDB = false
}

let employee = SecretLabEmployee()
employee.accessLevel
employee.accessToDB

employee.accessLevel =  1
employee.accessToDB

employee.accessLevel =  2
employee.accessToDB

// 25 Уровни доступа
// public, private, internal

// 26 Алиасы типов
typealias Meter = Int
let length: Meter = 50
let length1 = 20

let sum: Meter = length + length1


typealias DoubleInteger = (Int, Int)
let someConstant: DoubleInteger = (1, 2)

typealias DictionaryType = [String: Int]
var dictionary: DictionaryType = [:]
dictionary["Apartment123"] = 123
dictionary

// 27 Перечисления или энумы
enum Movement: Int {
    case forward = 10
    case backward = 23
    case left = 101
    case right = 123
}

let movementDirection = Movement.backward.rawValue

enum Device {
    case iPad(color: String), iPhone
    
    var year: Int {
        switch self {
        case .iPhone: return 2007
        case .iPad(let color) where color == "black": return 2020
        case .iPad: return 2010
        }
    }
}

let yearOfProduction = Device.iPad(color: "black").year

enum Character {
    enum Weapon: Int {
        case sword = 4
        case wand = 1
        
        var damage: Int {
            return rawValue * 10
        }
    }
    
    enum CharacterType {
        case knight
        case mage
    }
}

let characterWeapon = Character.Weapon.sword.damage

indirect enum Lunch {
    case salad
    case soup
    case meal(Lunch, Lunch)
}

let myLunch = Lunch.meal(.salad, .soup)

// 28 Структуры
// simple structure/class
class Site {
    // stored properties
    var siteName  = "SwiftBook.ru"
    let visitsToday = 1000
    let visitsYesterday = 1000
    
    // computed properties
    var visitsTomorrow: Int {
        return (visitsToday + visitsYesterday) / 2
    }
    // lazy property
    lazy var someLazyProperty = 1 + 2
    
    func description() -> String {
        return "We had \(visitsYesterday) visitors yesterday. Today we have \(visitsToday) visitors. Tomorrow we will have about \(visitsTomorrow) visitors."
    }
}

//// simple structure/class
//struct Site {
//    // stored properties
//    var siteName  = "SwiftBook.ru"
//    let visitsToday = 1000
//    let visitsYesterday = 1000
//    
//    // computed properties
//    var visitsTomorrow: Int {
//        return (visitsToday + visitsYesterday) / 2
//    }
//    // lazy property
//    lazy var someLazyProperty = 1 + 2
//    
//    func description() -> String {
//        return "We had \(visitsYesterday) visitors yesterday. Today we have \(visitsToday) visitors. Tomorrow we will have about \(visitsTomorrow) visitors."
//    }
//}

let firstWebSite = Site()

//func changeSiteName(site: Site) -> Site {
//    //var site = site
//    site.siteName = "iphonecoder.ru"
//    return site
//}
//
//changeSiteName(site: firstWebSite)
firstWebSite.siteName

// ===

let secondWebSite = Site()
let thirdWebSite = firstWebSite

if firstWebSite === thirdWebSite {
    print("===")
} else {
    print("not!")
}

// 29 Импорт фреймворков или библиотек


// 30 Проверка типов и приведение типов
class Furniture {
    let material: String
    
    init(material: String) {
        self.material = material
    }
}

class Bed: Furniture {
    let numberOfPlaces: Int
    
    init(numberOfPlaces: Int, material: String) {
        self.numberOfPlaces = numberOfPlaces
        super.init(material: material)
    }
}

class Cupboard: Furniture {
    let numberOfShelves: Int
    
    init(numberOfShelves: Int, material: String) {
        self.numberOfShelves = numberOfShelves
        super.init(material: material)
    }
}

var arrayOfFurniture = [Furniture]()

arrayOfFurniture.append(Bed(numberOfPlaces: 2, material: "Wood"))
arrayOfFurniture.append(Bed(numberOfPlaces: 1, material: "Steel"))
arrayOfFurniture.append(Bed(numberOfPlaces: 2, material: "Wood"))

arrayOfFurniture.append(Cupboard(numberOfShelves: 4, material: "Wood"))
arrayOfFurniture.append(Cupboard(numberOfShelves: 6, material: "Steel"))
arrayOfFurniture.append(Cupboard(numberOfShelves: 3, material: "Wood"))
arrayOfFurniture.append(Cupboard(numberOfShelves: 5, material: "Steel"))

arrayOfFurniture

var bed = 0
var cupboard = 0

//for item in arrayOfFurniture {
//    if item is Bed {
//        bed += 1
//    } else {
//        cupboard += 1
//    }
//}

for item in arrayOfFurniture {
//    if item is Bed {
//        let bedForSure = item as! Bed
//        bed += 1
//    } else {
//        cupboard += 1
//    }
    
    if let bedForSure = item as? Bed {
        bed += 1
        bedForSure.numberOfPlaces
    }
}

bed
cupboard


 31 Типы AnyObject и Any
class A {
    
}

class B {
    
}

class C {
    
}

let a = A()
let b = A()
let c = A()
let d = B()
let e = C()

struct D {
    
}

let f = D()

enum E {
    case a
    case b
}

let g = E.b

let array: [AnyObject] = [a, b, c, d, e]
let arrayTwo: [Any] = [a, b, c, d, e, f, g, true, "String", 0.95, 5 + 4]

for i in arrayTwo {
    switch i {
    case let item as Int: print("this is Int")
    case let item as String: print("this is String")
    default: print("this is other type")
    }
}

// 32 ARC
class Person {
    var dog: Dog?
    
    deinit {
        print("Person is free")
    }
}

class Dog {
    unowned var person: Person
    
    init() {
        self.person = Person()
    }
    
    deinit {
        print("Dog is free")
    }
}

let firstScope = true
let secondScope = true

//--------------------FIRST------------------------
if firstScope {
    
    let person = Person()
    let dog = Dog()

    //--------------------SECOND------------------------
    if secondScope {
        
        person.dog = dog
        dog.person = person
        
        print("secondScope has ended")
    }

    //--------------------SECOND ENDS------------------------
    
    print("firstScope has ended")
}

//--------------------FIRST ENDS------------------------

print("finish")

// 33 ARC в замыканиях
class Person {
    var dog: Dog?
    var closure2: (() -> ())?
    lazy var property: (Bool) -> (Bool) = { [unowned self] (param: Bool) -> Bool in
        print(self.dog)
        return true
    }
    
    init() {
        dog = Dog(person: self)
    }

    deinit {
        print("Person is free")
    }
}

class Dog {
    unowned var person: Person

    init(person: Person) {
        self.person = person
    }

    deinit {
        print("Dog is free")
    }
}

let firstScope = true
let secondScope = true

let closure1: () -> ()?

//--------------------FIRST------------------------
if firstScope {
    print("firstScope has STARTED<------------<------------<1")
    
    let person = Person()
    let dog = person.dog

//    closure1 = { [unowned person] in
//        print(person)
//    }
    
//    person.closure2 = { [unowned person] in
//        print(person)
//    }
    
    person.property(true)
    
    print("firstScope has ENDED>-------------->------------>1")
}

//--------------------FIRST ENDS------------------------

print("finish")

//var x = "a"
//
//let closure = { [x] () -> () in
//    print(x)
//}
//
//closure()
//
//x = "b"
//
//closure()

// 34 Опциональные цепочки
class Person {
    let job: Job? = Job()
    let workers: [Worker]? = [Worker()]
}

class Worker {
    let name = "Petya"
    
    func work() {
        print("I do some job")
    }
}

class Job {
    let salary: Salary? = Salary()
}

class Salary {
    let salary = 100_000
    
    func showSalary() -> String {
        return "\(salary)"
    }
}

let person = Person()
if let job = person.job {
    if let salary = job.salary {
        salary.salary
    }
}

if let job = person.job, let salary = job.salary {
    salary.salary
}

let salary = person.job?.salary?.salary

var workersArray = person.workers
workersArray?.append(Worker())
workersArray

// 35 Обработка ошибок и отложенные действия
enum PossibleErrors: Error {
    case notInStock
    case notEnoughMoney
}
struct Book {
    let price: Int
    var count: Int
}

class Library {
    var deposit = 11
    var libraryBooks = ["Book1": Book(price: 10, count: 1),
                        "Book2": Book(price: 11, count: 0),
                        "Book3": Book(price: 12, count: 3)]
    
    func getTheBook(withName: String) throws {
        guard var book = libraryBooks[withName] else {
            throw PossibleErrors.notInStock
        }
        
        guard book.count > 0 else {
            throw PossibleErrors.notInStock
        }
        
        guard book.price <= deposit else {
            throw PossibleErrors.notEnoughMoney
        }
        
        deposit -= book.price
        book.count -= 1
        libraryBooks[withName] = book
        print("You got the Book: \(withName)")
    }
}

let library = Library()
try? library.getTheBook(withName: "Book1")
library.libraryBooks

do {
    try library.getTheBook(withName: "Book1")
} catch PossibleErrors.notInStock {
    print("Book is not in stock")
} catch PossibleErrors.notEnoughMoney {
    print("Not enough money")
}

func doConnection() throws -> Int {
    return 10
}

let x = try? doConnection()

let y: Int?

do {
    y = try doConnection()
} catch {
    y = nil
}

var attempt = 0
func whateverFunc(param: Int) -> Int {
    defer {
        attempt += 2
    }
    
    defer {
        attempt *= 10
    }
    
    switch param {
    case 0: return 100
    case 1: return 200
    default: return 400
    }
}

whateverFunc(param: 1)
attempt

// 36 Сабскрипты
struct WorkPlace {
    var table: String
    var workPlace: [String]
    
    subscript(index: Int) -> String? {
        get {
            switch index {
            case 0: return table
            case 1..<workPlace.count + 1: return workPlace[index - 1]
            default: return nil
            }
        }
        
        set {
            switch index {
            case 0: return table = newValue ?? ""
            case 1..<workPlace.count + 1: return workPlace[index - 1] = newValue ?? ""
            default: break
            }
        }
    }
}

var work = WorkPlace(table: "table", workPlace: ["chair", "armchair", "lamp"])
work.workPlace[1]
work[1]

// 37 Расширения
extension Int {
    var isEven: Bool {
        return self % 2 == 0 ? true : false
    }
    
    func power(powerValue: Int) -> Int {
        var tempValue = self
        for _ in 1..<powerValue {
            tempValue *= self
        }
        return tempValue
    }
}

let a = 12

a.isEven
a.power(powerValue: 3)

// 38 Протоколы
protocol Human {
    var name: String { get }
}

protocol Driver: Human {
    var car: Bool { get }
    var license: Bool { get }
    
    func toDrive() -> Bool
}

extension Driver {
    var license: Bool { return true }
    var car: Bool { return true }
    var name: String { return "Viktor" }
    
    func toDrive() -> Bool {
        return true
    }
}

extension FirmDriver: Driver {
//    var license: Bool { return true }
//    var car: Bool { return true }
//    
//    func toDrive() -> Bool {
//        return true
//    }
    var license: Bool { return false }
//    var name: String { return "Viktor" }
}

class FirmDriver/*: ClassA, Protocol1, Protocol2*/ {
//    let license = true
//    let car = true
//    
//    func toDrive() -> Bool {
//        return true
//    }
}

let firmDriver = FirmDriver()
firmDriver.license
firmDriver.car

// 39 Универсальные шаблоны
class A {
    
}

let arr = Array<Int>()
let array = [1, 2, 3, 4]
let arrayStr = ["one", "two", "three"]
let arrayCls = [A(), A(), A()]

//func paramValue(param: Int) -> String {
//    return "\(param)"
//}

//func paramValue(param: String) -> String {
//    return "\(param)"
//}

//paramValue(param: "string")

func paramValue <T> (param: T) -> String {
    return "\(param)"
}

paramValue(param: 2)
paramValue(param: "string")
paramValue(param: true)

struct HelpfulFunctions <T: Comparable, U: Equatable> {
    func paramValue(param: T, param2: U) -> String {
        return"\(param), \(param2)"
    }
}

let example = HelpfulFunctions<String, Int>()
example.paramValue(param: "String1", param2: 5)

var a = "b"
var b = "a"

func swappy<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}

swappy(&a, &b)
a
b

