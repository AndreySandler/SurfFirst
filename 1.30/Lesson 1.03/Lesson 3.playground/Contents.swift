import UIKit

//: ## Конструкция if
/*:
    if condition {
        some code
    }
 
*/

var someNumber = 10

if someNumber < 4 { // False
    print("The condition is true")
}

someNumber = 1

if someNumber < 4 { // True
    print("The condition is true")
}

/*:
    if conditionOne {
        some code
    } else if conditionTwo {
        some code
    }
*/

someNumber = 10

if someNumber < 4 { // False
    print("The first condition is true")
} else if someNumber < 8 { // False
    print("The second condition is true")
}

someNumber = 7

if someNumber < 4 { // False
    print("The first condition is true")
} else if someNumber < 8 { // True
    print("The second condition is true")
}

someNumber = 1

if someNumber < 4 { // True
    print("The first condition is true")
} else if someNumber < 8 { // True, but never execute
    print("The second condition is true")
}

if someNumber < 4 { // True
    print("The first condition is true")
}

if someNumber < 8 { // True
    print("The second condition is true")
}

/*:
    if conditionOne {
        some code
    } else if conditionTwo {
        some code
    } else {
        some code
    }
 */


someNumber = 10

if someNumber < 4 { // False
    print("The first condition is true")
} else if someNumber < 8 { // False
    print("The second condition is true")
} else if someNumber < 10 { // False
    print("The third condition is true")
} else {
    print("Nothing was true")
}

//: ### Тернарный оператор

let a = 5
let b = 10
var c = 0

if a < 10 {
    print("The condition is true")
} else {
    print("The condition is false")
}

// condition ? some code : some code

a < 10 ? print("The condition is true") : print("The condition is false")

if c < 10 {
    c = a - b
} else {
    c = a + b
}

c = c < 10 ? a - b : a + b

//: ## Switch statement



/*:
    switch значение для сопоставления {
    case значение 1:
        инструкция для первого значения
    case значение 2, значение 3:
        инструкция для второго и третьего значения
    default:
        инструкция, если совпадений с шаблонами не найдено
    }
*/

var someCharacter: Character = "a"

if someCharacter == "a" {
    print("Is an A")
} else if someCharacter == "b" {
    print("Is an B")
} else if someCharacter == "c" {
    print("Is an C")
} else {
    print("Don`t know what is it")
}

someCharacter = "B"

if someCharacter == "a" || someCharacter == "A" {
    print("Is an A")
} else if someCharacter == "b" || someCharacter == "B" {
    print("Is an B")
} else if someCharacter == "c" || someCharacter == "C" {
    print("Is an C")
} else {
    print("Don`t know what is it")
}

switch someCharacter {
case "a", "A":
    print("Is an A")
case "b", "B":
    print("Is an B")
case "c", "C":
    print("Is an C")
default:
    print("Don`t know what is it")
}

//: ### Соответствие диапазону

let approximateCount = 62
let countedThings = "moons orbiting Saturn"
var naturalCount = ""

switch approximateCount {
case ..<0:
    print("Error")
case 0:
    naturalCount = "no"
case 1:
    naturalCount = "one"
case 2..<5:
    naturalCount = "a few"
case 5...11:
    naturalCount = "several"
case 12...99:
    naturalCount = "dozens of"
default:
    naturalCount = "many"
}

print("There are \(naturalCount) \(countedThings)")

