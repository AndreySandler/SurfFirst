import UIKit

//: # Home Work 9

/*:
 ## Задание 1
 1.1 Создайте перечисление `CalculationType`, содержащее четыре математических действия — *сложение*, *вычитание*, *умножение* и *деление*.
 */

enum CalculationType: String {
    case addition = "сложения"
    case subtraction = "вычитания"
    case multiplication = "умножения"
    case division = "деления"
}

//: 1.2 Напишите функцию возвращающую `Int` и принимающую в качестве параметров три значения: число один, число два и тип математической операции. Внутри функции, в зависимости от значения параметра `CalculationType` выполните соответствующую математическую операцию со значениями и верните результат. Реализуйте функцию таким образом, что бы при каждом её вызове на консоль выводилось сообщение следующего содержания: «Результат сложения (вычитания, деления, умножения) <…> и <…> равен <…>».

func calculate(_ numberOne: Int, _ numberTwo: Int, _ calculationType: CalculationType) -> Int {
    let result: Int
    
    switch calculationType {
    case .addition:
        result = numberOne + numberTwo
    case .subtraction:
        result = numberOne - numberTwo
    case .multiplication:
        result = numberOne * numberTwo
    case .division:
        result = numberOne / numberTwo
    }
    
    print("Результат \(calculationType.rawValue) \(numberOne) и \(numberTwo) равен \(result)")
    
    return result
}

//: 1.3 Вызовите эту функцию четыре раза для каждого математического оператора в отдельности.

calculate(2, 2, .addition)
calculate(2, 2, .subtraction)
calculate(2, 2, .multiplication)
calculate(2, 2, .division)

/*:
 ## Задание 2
 2.1 Создайте перечисление `DistanceUnit` (Единица измерения расстояния) со следующими кейсами: `versta`, `kilometer`, `mile`.
 
 Внутри перечисления `DistanceUnit` создайте еще одно перечисление `NonISUCountry` в котором содержится перечень стран не принявших международную систему единиц (США, Либерия и Мьянма).
 
 Верста и километр должны иметь ассоциативный параметры следующего типа: `(title: String, denotation: String, countries: [String])`. Миля - `(title: String, denotation: String, countries: [NonISUCountry])`. Первый параметр - это название единицы измерения, второй параметр отвечает за обозначение единицы, а массив должен содержать перечень стран в которых используется эта единица (для километра не обязательно перечислять все страны).
 */

enum DistanceUnit {
    enum NonISUCountry: String {
        case usa = "USA"
        case liberia = "Liberia"
        case mjanma = "Mjanma"
    }
    
    case versta(title: String, denotation: String, countries: [String])
    case kilometer(title: String, denotation: String, countries: [String])
    case mile(title: String, denotation: String, countries: [NonISUCountry])
}

/*:
 
 2.2 Создайте по экземпляру DistanceUnit для каждого кейса и функцию, которая должна принимать единицу измерения и выводить на консоль информацию о ней, например: "Километр. Краткое наименование: км. Страны: Россия, Евросоюз".
 */

let versta: DistanceUnit = .versta(
    title: "Versta",
    denotation: "v",
    countries: ["Old Russia", "Poland"]
)

let kilometer: DistanceUnit = .kilometer(
    title: "Kilometer",
    denotation: "km",
    countries: ["Russia", "European countries"]
)

let mile: DistanceUnit = .mile(
    title: "Mile",
    denotation: "ml",
    countries: [.usa, .liberia, .mjanma]
)

func defineCountry(by value: DistanceUnit) {
    switch value {
    case let .versta(title, denotation, countries), let .kilometer(title, denotation, countries):
        print("\(title). Краткое наименование: \(denotation). Cтраны: \(countries.joined(separator: ", "))")
    case let .mile(title, denotation, countries):
        print("\(title). Краткое наименование: \(denotation). Cтраны: \(countries.map({ $0.rawValue }).joined(separator: ", "))")
    }
}

func great(_ name: String, _ owner: String) -> String {
    return "Hello \(name.elementsEqual(owner) ? "boss" : "guest")"
}

great("Greg", "Tom")

func grow(_ arr: [Int]) -> Int {
    arr.reduce(1, *)
}

grow([1, 2, 3, 4])

func opposite(number: Double) -> Double {
    number / -1
}

opposite(number: 4)

func flip(_ direction: String, _ a: [Int]) -> [Int] {
    a.sorted(by: direction == "R" ? (<) : (>))
}

flip("R", [10, 2, 3, 6, 7, 8, 3])

func checkForFactor(_ base: Int, _ factor: Int) -> Bool {
    base % factor == 0
}

checkForFactor(10, 3)

func past(_ h: Int, _ m: Int, _ s: Int) -> Int {
    3600000 * h + 60000 * m + 1000 * s
}

past(1, 1, 1)

func check<T: Equatable>(_ a: [T], _ x: T) -> Bool {
    a.contains(x)
}

/*func reverseSeq(n: Int) -> [Int] {
 var numbers: [Int] = []
 for number in 1...n {
 numbers.append(number)
 }
 return numbers.reversed()
 }*/

/*func reverseSeq(n: Int) -> [Int] {
 let numbers = Array(1...n)
 return numbers.reversed()
 }*/

/*func reverseSeq(n: Int) -> [Int] {
 Array(1...n).reversed()
 }*/

func reverseSeq(n: Int) -> [Int] {
    (1...n).reversed()
}

let reverseNumbers = reverseSeq(n: 10)
print(reverseNumbers)

/*func isDivisible(_ n: Int, _ x: Int, _ y: Int) -> Bool {
    if (x...y).contains(n) {
        return true
    } else {
        return false
    }
}*/

func isDivisible(_ n: Int, _ x: Int, _ y: Int) -> Bool {
    n.isMultiple(of: x) && n.isMultiple(of: y)
}

isDivisible(10, 1, 3)

func summation(_ n: Int) -> Int {
    (1...n).reduce(0, +)
}

summation(8)

func digitize(_ num:Int) -> [Int] {
    String(num).compactMap { Int(String($0)) }.reversed()
}

digitize(123124)

func boolToWord(_ bool: Bool) -> String {
    bool ? "Yes" : "No"
}

boolToWord(false)

func greet() {
   print("hello world!")
}

greet()

func multiply (_ x: Double, _ y: Double) -> Double {
  x * y
}

multiply(2, 3)

func monkeyCount(_ n: Int) -> [Int] {
    Array(1...n)
}

monkeyCount(10)

func getPlanetName(_ id: Int) -> String {
  var name: String
  switch id {
    case 1:
      name = "Mercury"
    case 2:
      name = "Venus"
    case 3:
      name = "Earth"
    case 4:
      name = "Mars"
    case 5:
      name = "Jupiter"
    case 6:
      name = "Saturn"
    case 7:
      name = "Uranus"
    case 8:
      name = "Neptune"
    default:
      name = ""
    return name
  }
    return name
}

getPlanetName(3)

func RentalCarCost(_ days: Int) -> Int {
    var totalCost = 0
    if days < 3 {
        totalCost = days * 40
    } else if days < 7 {
        totalCost = days * 40 - 20
    } else if days >= 7 {
        totalCost = days * 40 - 50
    }
    return totalCost
}

RentalCarCost(8)

func simpleMultiplication(_ num: Int) -> Int {
    num % 2 == 0 ? num * 8 : num * 9
}

simpleMultiplication(7)

func move(_ p: Int, _ r: Int) -> Int {
    p + 2 * r
}

func maps(a : Array<Int>) -> Array<Int> {
    
}
