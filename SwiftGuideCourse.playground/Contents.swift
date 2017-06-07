import UIKit

// 01 Знакомство с Playground
//var str = "Hello, playground"
//let y = 10
//var x = y + 10
//for i in 1..<10 {
//    print("i равен \(i)")
//}
//let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
//label.backgroundColor = UIColor.red
//label.text = str
//label.layer.cornerRadius = 50
//label.layer.masksToBounds = true
//label

// 02 Константы и переменные
//var str = "Hello, playground"
//var str1 = "Hello, Steve"
//
//str = "Hello, Xcode"
//str1 = "Hello, Tim"

// 03 Типы данных
// Character, String, Int, Double, Float, Bool
//let x: Character = "q"
//let y: String = "Russian Federation"
//let z: Double = 1.000_050_000_123_123
//let w: Float = 1.000006
//let d: Int = 123
//let b: Bool = true // false
//
//let r = "false"
//let f = Int(123.123)
//let v = Float(123.12213423244433)

// 04 Базовые операторы
// оператор присваивания =
//let a = "Hello, World!"
//
//// арифметические операторы + - / *
//let b = 1 + 2
//let c = 10 / 2
//
//// оператор остатка %
//let d = 100 % 3
//
//// составные операторы += -+ /= *=
//let e = 1
//var f = 0
//f += e
////f = f + e
//f += 1
//f -= 1
//f *= 10
//f /= 5
//
//// операторы сравнения <= >= != == < >
//let g = 10
//let h = 11
//g > h
//g != h
//
//// оператор заменяющий nil ??
//let defaultName = "Steve"
//var name: String? = nil
//let myName = name ?? defaultName
//
//// унарный оператор -, тернарный оператор
//-5
//
//let bool = true
//let t = bool ? 10 : 30
//
//// логические операторы && || !
//let temp = 10
//let wind = 3
//
//if temp >= 10 && wind <= 5 {
//    print("!")
//}
//
//let bool1 = true
//let bool2 = !bool1
//
//// операторы диапазона ... ..<
//1...10
//1..<10

// 05 Интерполяция строк
//let temperature = 12
//let windSpeed = 5
//let weatherDescription = "Temperature is about 12˚C above zero and wind speed is about 5 m/s"
//let weatherDescriptionI = "Temperature is about \(temperature)˚C above zero and wind speed is about \(windSpeed) m/s"
//
//let string = "\(1 + 2)" + "\(2 + 3)"

// 06 Массивы
//let arrayOne = Array<Int>()
//let arrayTwo = [Int]()
//var arrayThree: [Int] = []
//let arrayFour = [1, 2, 3, 4]
//let arrayFive = [Int](repeatElement(10, count: 6))
//
//arrayThree += arrayFive
//arrayThree
//
//arrayFour[2]
//arrayThree[1...3] = [15]
//arrayThree
//
//arrayThree.count - 1
//arrayThree.append(100)
//arrayThree.insert(105, at: 2)
//
//arrayThree.remove(at: 4)
//arrayThree
//
//arrayThree.removeFirst()
//arrayThree
//
//let deletedValue = arrayThree.removeLast()
//deletedValue
//arrayThree
//
//arrayThree.reverse()

// 07 Словари
//let dictOne = Dictionary<String, String>()
//let dictTwo = [String: String]()
//let dictThree: [String: String] = [:]
//var namesAges = ["Ivan"     : 30,
//                 "Vitalik"  : 30,
//                 "Sasha"    : 25]
//
//namesAges.count
//namesAges.isEmpty
//
//namesAges["Ivan"] = 35
//namesAges
//
//let deletedAge = namesAges.updateValue(40, forKey: "Ivan")
//namesAges
//
//namesAges["Ivan"] = nil
//namesAges
//
//let deletedValue = namesAges.removeValue(forKey: "Sasha")
//namesAges
//
//namesAges.removeAll() // namesAges = [:]

// 08 Множества
//let setOne = Set<String>()
//let setTwo: Set<String> = []
//var setThree: Set = [1, 2, 3, 4]
//
//setThree.insert(5)
//setThree.insert(6)
//setThree.insert(7)
//
//setThree.isEmpty
//setThree.count
//setThree.remove(6)
//setThree
//
//let boolValue = setThree.contains(1)
//boolValue
//
//let setFromOneToThree: Set = [1, 2, 3, 4]
//let setFromFourToNine: Set = [1, 2, 4, 5, 6, 7, 8, 9]
//
//let allValuesArray = setFromOneToThree.union(setFromFourToNine).sorted()
//
//let commonValuesSet = setFromOneToThree.intersection(setFromFourToNine)
//
//let notRepeatedValuesArray = setFromOneToThree.symmetricDifference(setFromFourToNine).sorted()
//let substractedValuesArray = setFromOneToThree.subtracting(setFromFourToNine).sorted()

// 09 Инструкция if
//let a = 3
//let b = 1
//
//if a == b {
//    print("a equals to b")
//} else if a < b{
//    print("b exceeds a by \(b - a)")
//} else if b < a{
//    print("a exceeds b by \(a - b)")
//}
//
//let isSunny = true
//var action = ""
//
//if isSunny {
//    action = "I will go for a walk"
//} else {
//    action = "I will sit at home"
//}
//
//action = isSunny ? "I will go for a walk" : "I will sit at home"
//
//// if a != b
//// if a <= b
//// if a >= b
//// if a > b
//// if a < b
//// ~=
//
//if 1...4 ~= b {
//    print("Hello world")
//}
//
//if a == b {
//    
//}
//
//let c = 5
//
//if (c == 2 && a == 10) || c == 6 {
//    print("Hello coder")
//} else {
//    print("!!!")
//}

// 10 Инструкция guard
//func someFunc(a: Int, b: Int) {
//    
//    guard a == b else { return }
//    // some code to run
//    guard b == 11 else { return }
//    // some code to run
//    
//    if a == b {
//        // some code to run
//        if b == 11 {
//            // some code to run
//        }
//    }
//}
//
//for i in 1...5 {
//    guard i != 3 else { break }
//    print(i)
//}
//
//for i in 1...5 {
//    if i == 3 {
//        break
//    }
//    print(i)
//}

// 11 Инструкция switch
//let totalScore = 20
//
//if totalScore == 10 {
//    print("you're not jedi")
//} else if totalScore == 20 {
//    print("you're still not jedi")
//} else if totalScore == 100 {
//    print("you're jedi")
//}
//
//switch totalScore {
//case 10, 20: print("you're not jedi")
//    fallthrough
//case 50..<100: print("you're almost jedi")
//case 100: print("you're jedi")
//default: break
//}

// 12 Цикл for-in
//let array = [1, 2, 3, 4]
//let arrayOfStrings = ["a", "b", "c"]
//for i in arrayOfStrings {
//    //print(i)
//}
//
//let string = "some string"
//
//for char in string.characters {
//    //print(char)
//}
//
//let nameAndFingers = ["Ivan": 20, "Svetlana": 18, "Nadejda": 15]
//for (name, numberOfFingers) in nameAndFingers {
//    //print("Pyro name is \(name) and number of fingers \(numberOfFingers)")
//}
//
//for (index, value) in arrayOfStrings.enumerated() {
//    //print(index, value)
//}
//
//for i in stride(from: 0, through: 15, by: 5) {
//    print(i)
//}

// 13 Циклы while, repeat-while
//var timer = 5
//print("Counting down")
//
//while timer > 0 {
//    print(timer)
//    timer -= 1
//}
//print("Start!")

//var timer = 5
//print("Counting down")
//
//repeat {
//    print(timer)
//    timer -= 1
//} while timer > 0
//print("Start!")

// 14 Функции
// 1. простая функция, ничего не принимающая и ничего не возвращающая

//func sayHello() {
//    print("Hello")
//}
//
//sayHello()
//
//// 2. функция, принимающая один параметр
//
//func oneParam(param: Int) {
//    var param = param
//    param += 1
//}
//
//oneParam(param: 11)
//
//// 3. функция, не принимающая параметров, но возвращающая значение
//
//func returnValue() -> Int {
//    return 10
//}
//
//let a = returnValue()
//a
//
//// 4. функция, принимающая несколько параметров и возвращающая значение
//
//func giveMeYour(name: String, andSecondName: String) -> String {
//    return "Your full name is \(name) \(andSecondName)"
//}
//
//giveMeYour(name: "Ivan", andSecondName: "Akulov")
//
//
//// 5. функция, принимающая массив в качестве параметра и использующая вложенную функцию для работы
//func calcMoneyIn(array: [Int]) -> Int {
//    
//    var sum = 0
//    func sayMoney() {
//        print(sum)
//    }
//    
//    for item in array {
//        sum += item
//    }
//    
//    sayMoney()
//    return sum
//}
//
//calcMoneyIn(array: [1, 2, 3, 4, 5])
//
//// 6. функция, которая принимает переменное число параметров
//
//func findSum(ofIntegers integers: Int...) -> Int {
//    
//    var sum = 0
//    
//    for item in integers {
//        sum += item
//    }
//    return sum
//}
//
//findSum(ofIntegers: 1, 2, 3, 4, 5, 6)
//
//// 7. имена параметров функции
//
//func sum(_: Int) -> Int {
//    return 10
//}
//
//// 8. функция в качестве возвращаемого значения
//
//func whatToDo(missed: Bool) -> (Int) -> Int {
//    func missCountUp(input: Int) -> Int { return input + 1 }
//    func missCountDown(input: Int) -> Int { return input - 1 }
//    
//    return missed ? missCountUp : missCountDown
//}
//
//var missedCount = 0
//missedCount = whatToDo(missed: true)(missedCount)
//missedCount = whatToDo(missed: false)(missedCount)

// 15 Замыкания или клоужеры
//func whateverFunc() {
//    print("Hello, World!")
//}

//let closure = {
//    print("Hello, World!")
//}

//func repeatThreeTimes(closure: () -> ()) {
//    for _ in 0...2 {
//        closure()
//    }
//}
//
//repeatThreeTimes {
//    () -> () in
//    print("Hello, World!")
//}
//
//let unsortedArray = [123, 2, 32, 67, 8797, 432]
//let sortedArray = unsortedArray.sorted {
//    (number1: Int, number2: Int) -> Bool in
//    return number1 < number2
//}

// 16 Кортежи
//let one = 1
//let two = 2
//let three = 3
//
//(one, two, three)
//
//let boy = (5, "Sergey")
//boy.0
//boy.1
//
//let (first, second, third) = (1, 2, 3)
//first
//second
//third
//
//let greenPencil = (color: "green", length: 20, weight: 4)
//greenPencil.color
//greenPencil.length
//greenPencil.weight
//let (greenColor, greenLength, greenWeight) = greenPencil
//
//let agesAndNames = ["Misha": 29, "Kostya": 90, "Mira": 30]
//
//var age = 0
//var name = ""
//
//for (nameInD, ageInD) in agesAndNames {
//    if age < ageInD {
//        age = ageInD
//        name = nameInD
//    }
//}
//
//age
//name

// 17 Опционалы
//var fuel: Int?
//fuel = 20
////fuel = nil
//
////print("\(fuel!) liters left")
//
//if let avaliableFuel = fuel {
//    print("\(avaliableFuel) liters left")
//} else {
//    print("no fuel data avaliable")
//}
//
//func checkFuel() {
//    guard let avaliableFuel = fuel else {
//        print("no fuel data avaliable")
//        return
//    }
//    print("\(avaliableFuel) liters left")
//}
//
//checkFuel()

// 18 Классы
//class Human {
//    var name = "Ivan"
//    var age: Int? = 30
//    var hairs = true
//    
//    func description() -> String {
//        if let humanAge = age {
//            return "Hello! My name is \(name) and I'm \(humanAge) years old!"
//        } else {
//            return "Hello! My name is \(name)!"
//        }
//    }
//}
//
//var humanOne = Human()
//humanOne.name = "Natasha"
//humanOne.name
//humanOne.description()
//
//let humanTwo = Human()
//humanTwo.hairs = false
//humanTwo.name = "Jack"
//humanTwo
//
////humanOne = humanTwo
//humanOne.name
//
//var array = [Human]()
//array.append(humanOne)
//array.append(humanTwo)

// 19 Инициализаторы
//class Human {
//    var name: String
//    var age: Int?
//    var hairs: Bool
//
//    func description() -> String {
//        if let humanAge = age {
//            return "Hello! My name is \(name) and I'm \(humanAge) years old!"
//        } else {
//            return "Hello! My name is \(name)!"
//        }
//    }
//    
//    init() {
//        name = "Ivan"
//        hairs = true
//    }
//    
//    init(name: String, age: Int?, hairs: Bool) {
//        self.name = name
//        self.age = age
//        self.hairs = hairs
//    }
//}
//
//var human = Human()
//human.age
//human.name
//human.hairs
//
//let human1 = Human(name: "Jason", age: 40, hairs: true)

// 20 Наследование
//class Human {
//    // properties
//    var name: String
//    
//    // method
//    func tellAboutMe() -> String {
//        return "Hello! My name is \(name)"
//    }
//    
//    // initializer
//    init(name: String) {
//        self.name = name
//    }
//}
//
//class Child: Human {
//    var toy = "Horse"
//    
//    override func tellAboutMe() -> String {
//        let originalText = super.tellAboutMe()
//        return "\(originalText) And I have a toy \(toy)"
//    }
//    
//    init(toy: String, name: String) {
//        self.toy = toy
//        super.init(name: name)
//    }
//    
//    override init(name: String) {
//        self.toy = "Hummer"
//        super.init(name: name)
//    }
//}
//
//let child = Child(name: "Klava")
//child.tellAboutMe()
//child.name
//child.toy
//
//let child1 = Child(toy: "Dinosaur", name: "Max")
//child1.tellAboutMe()

// 21 Вычисляемые свойства
//class Rectangular {
//    let height: Int
//    let width: Int
//    let depth: Int
//    
//    var volume: Int {
//        return height * width * depth
//    }
//    
//    init(height: Int, width: Int, depth: Int) {
//        self.height = height
//        self.width = width
//        self.depth = depth
//    }
//}
//
//let rect = Rectangular(height: 10, width: 12, depth: 13)
//rect.volume
//
//class Person {
//    var name: String
//    var secondName: String
//    
//    var fullName: String {
//        get {
//            return name + " " + secondName
//        }
//        
//        set {
//            let array = newValue.components(separatedBy: " ")
//            guard array.count > 1 else { return }
//            name = array[0]
//            secondName = array[1]
//        }
//    }
//    
//    init(name: String, secondName: String) {
//        self.name = name
//        self.secondName = secondName
//    }
//}
//
//let person = Person(name: "Ivan", secondName: "Akulov")
//person.fullName
//
//person.name
//person.secondName
//person.fullName = "Zinaida Petrova"
//person.name
//person.secondName

// 22 Свойства классов
//class Car {
//    // properties
//    let products: Int
//    let people: Int
//    let pets: Int
//    class var selfWeight: Int { return 1500 }
//    class var maxWeight: Int { return 2000 }
//    
//    // computed property
//    var totalWeight: Int {
//        return products + people + pets + Car.selfWeight
//    }
//    
//    // initializer
//    init(products: Int, people: Int, pets: Int) {
//        self.products = products
//        self.people = people
//        self.pets = pets
//    }
//}
//
//let car = Car(products: 30, people: 500, pets: 50)
//let maxWeight = Car.maxWeight
//let carWeight = Car.selfWeight
//let totalWeight = car.totalWeight
//
//if maxWeight < totalWeight {
//    print("You can't drive it because car is overloaded: \(totalWeight - maxWeight)")
//} else {
//    print("You can drive!")
//}

// 23 Ленивые свойства


// 24 Наблюдатели свойства


// 25 Уровни доступа
// 26 Алиасы типов
// 27 Перечисления или энумы
// 28 Структуры
// 29 Импорт фреймворков или библиотек
// 30 Проверка типов и приведение типов
// 31 Типы AnyObject и Any
// 32 ARC
// 33 ARC в замыканиях
// 34 Опциональные цепочки
// 35 Обработка ошибок и отложенные действия
// 36 Сабскрипты
// 37 Расширения
// 38 Протоколы
// 39 Универсальные шаблоны
