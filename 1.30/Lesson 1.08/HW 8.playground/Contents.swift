import UIKit

//: # Home Work 8

/*:
 ## Задание 1
 1.1 Создайте базовый класс `Shape` со следующими вычисляемыми свойствами:
 
 - `area: Double`
 
 - `perimeter: Double`
 
 - `description: String`
 
 Свойство `description` должно возвращать сообщение следующего вида: «The area of <...> is <...>. Perimeter - <...>»
 */

class Shape {
    var area: Double {
        0
    }
    var perimeter: Double {
        0
    }
    var description: String {
        "The area of \(type(of: self)) is \(area). Perimeter - \(perimeter) "
    }
}


/*:
 1.2. Создайте классы `Circle` и `Rectangle`, унаследовав их от `Shape`. Переопределите свойства `area` и `perimeter` для каждого класса в соответствии с правилом расчета площади и периметра (длины) конкретной фигуры.
 */

class Circle: Shape {
    let radius: Double

    override var area: Double {
        Double.pi * pow(radius, 2)
    }
    
    override var perimeter: Double {
        2 * Double.pi * radius
    }
    init (radius: Double) {
        self.radius = radius
    }
    
}

class Rectangle: Shape {
    let height: Double
    let weidth: Double
    
    override var area: Double {
        height * weidth
    }
   
    override var perimeter: Double {
        (height + weidth) * 2
    }
    
    init (height: Double, weidth: Double) {
        self.height = height
        self.weidth = weidth
    }
}
/*:
 1.3. Создайте класс `Ellipse`, унаследовав его от `Rectangle`. Переопределите свойства `area` и `perimeter` в соответствии с правилом расчета площади и периметра эллипса (для расчета нужно использовать ширину и высоту).
 */

class Ellipse: Rectangle {
    
    override var area: Double {
        Double.pi * height * weidth
    }
    
    override var perimeter: Double {
        2 * Double.pi * sqrt(pow(height, 2) + pow(weidth, 2) / 2)
    }
}

//: 1.4 Создайте по экземпляру каждого класса, кроме `Shape` и выведите значение свойства `description` на консоль.

let circle = Circle(radius: 2)
let rectangle = Rectangle(height: 2, weidth: 2)
let ellipse = Ellipse(height: 2, weidth: 2)

print(circle.description)
print(rectangle.description)
print(ellipse.description)

/*:
 ## Задание 2
 2.1 Создайте структуру `Car` со следующими свойствами:
 - `model: String`
 - `power: Int`
 - `description: String`
 
 Свойство `description` должно возвращать сообщение с названием автомобиля и его мощность в лошадиных силах.
 
 Так же необходимо реализовать метод `increasePower`, который должен увеличить мощность автомобиля на заданное количество лошадиных сил.
 */

struct Car {
    let model: String
    var power: Int
    var description: String {
        "\(model) have \(power) kVt"
    }
    
    mutating func increase(horsepower: Int) {
        self.power += horsepower
    }
}

/*:
 2.2 Создайте экземпляр структуры и инициализируйте её свойства. Выведите значение свойства `description` на консоль, а затем вызовите метод `increasePower`. Снова выведите значение свойства `description` на консоль.
 */

var car = Car(model: "Toyota Camry 3.5", power: 183)
print(car.description)

car.increase(horsepower: 10)
print(car.description)




func numberToString(number: Int) -> String {
    String(number)
}

numberToString(number: 10)

func KataTwist() {
    var websites: [String] = []
    for _ in 1...1000 {
    websites.append("codewars")
  }
}

func booleanToString(_ b: Bool) -> String {
  String(b)
}

func greet(_ name: String) -> String {
  name
}

greet("Yoyoyo")

func reverse(_ str: String) -> String {
    String(str.reversed())
}

func evenOrOdd(_ number:Int) -> String {
    number % 2 == 0 ? "Even" : "Odd"
}

func bmi(_ weight: Int, _ height: Double) -> String {
    "\(Double(weight) / (pow(height, 2)))"
}

bmi(61, 18)
