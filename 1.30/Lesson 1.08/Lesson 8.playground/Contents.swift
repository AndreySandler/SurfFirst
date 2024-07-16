import UIKit

//: # Lesson 8
//: ### Наследование


class Human {
    let name: String
    var age = 0
    
    init(name: String) {
        self.name = name
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func walk() {
        print("I can walk")
    }
    
    func sleep() {
        print("I need sleep")
    }
    
    func eat() {
        print("I need food")
    }
}

let person = Human(name: "Tim Cook", age: 61)
person.walk()
person.eat()
person.sleep()

class Child: Human {
    func nursing() {
        if age <= 5 {
            print("I need care")
        } else {
            print("I can eat independently")
        }
    }
    
    func parenting() {
        if age >= 5 && age <= 13 {
            print("I need an education")
        } else if age < 5 {
            print("Me too early to educate")
        } else {
            print("Me too late to educate")
        }
    }
}

let littleBoy = Child(name: "Tom", age: 4)
littleBoy.walk()
littleBoy.sleep()
littleBoy.eat()
littleBoy.nursing()
littleBoy.parenting()

class SchoolChild: Child {
    func schooling() {
        if age >= 6 && age <= 17 {
            print("I have to go to school")
        } else {
            print("I'm still too early in school")
        }
    }
}

let schoolchild = SchoolChild(name: "Molly", age: 5)
schoolchild.sleep()
schoolchild.parenting()
schoolchild.schooling()

//: ### Полиморфизм

class Shape {
    func draw() {
        print("Draw some shape")
    }
}

class Ellipse: Shape {
    override func draw() {
        print("Draw Ellipse")
    }
}

class Triangle: Shape {
    override func draw() {
        print("Draw Triangle")
    }
}

class Circle: Shape {
    override func draw() {
        print("Draw Circle")
    }
}

func draw(shape: Shape) {
    shape.draw()
}

let ellipse = Ellipse()
let triangle = Triangle()
let circle = Circle()

draw(shape: ellipse)
draw(shape: triangle)
draw(shape: circle)

//: ## Структуры

struct PlayerLocation {
    var player: String
    var x: Int
    var y: Int
    
    func getLocation() {
        print("\(player) is at \(x) and \(y)")
    }
}

var player = PlayerLocation(player: "Player", x: 10, y: 8)
player.getLocation()
player.x = 7
player.getLocation()

//: ### Сравнение классов и структур

class MacBook {
    var title: String
    var year: Int
    var color: String
    
    init(title: String, year: Int, color: String) {
        self.title = title
        self.year = year
        self.color = color
    }
    
    func printDescription() {
        print("\(title) \(year), \(color)")
    }
}

let macBookPro = MacBook(title: "MacBook Pro", year: 2022, color: "Silver")

let macBookAir = macBookPro
macBookAir.title = "MacBook Air"
macBookAir.color = "Gold"

macBookPro.printDescription()
macBookAir.printDescription()

struct IPhone {
    var title: String
    var color: String
    var capacity: Int
    
    func printDescription() {
        print("\(title) \(color) \(capacity)Gb")
    }
}

let iPhoneXR = IPhone(title: "iPhone XR", color: "Coral", capacity: 128)

var iPhone13 = iPhoneXR
iPhone13.title = "iPhone 13"

iPhoneXR.printDescription()
iPhone13.printDescription()

var number = 12
var anotherNumber = number

number = 0
anotherNumber

//: ### Методы в структурах

struct Rectangle {
    var width: Int
    var height: Int
    
    var area: Int {
        width * height
    }
    
    mutating func scale(width: Int, height: Int) {
        self.width *= width
        self.height *= height
    }
}

var rectangle = Rectangle(width: 10, height: 5)
rectangle.area
rectangle.scale(width: 2, height: 3)
rectangle.area
