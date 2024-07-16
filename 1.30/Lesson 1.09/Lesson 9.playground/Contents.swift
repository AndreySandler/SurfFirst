import UIKit

//: # Lesson 9
//: ## Перечисления

var someDay = "Monday"

func setupAlarm(for day: String) {
    if day == "Monday" || day == "Tuesday" {
        print("Today is \(day). The alarm is set at 8 am")
    } else {
        print("Today is \(day). Alarm not set")
    }
}

setupAlarm(for: someDay)
someDay = "tuesday"
setupAlarm(for: someDay)

/*:
    enum EnumerationName {
        case enumeration
    }
 
 */

enum Weekday {
    case monday
    case tuesday
    case wednsday
    case thursday
    case friday
    case saturday
    case sunday
}

var weekday: Weekday = .monday

//: ### Использование инструкции Switch

func setupAlarm(for weekday: Weekday) {
    switch weekday {
    case .monday, .tuesday:
        print("Set alarm to 8 am")
    case .wednsday:
        print("Set alarm to 8:30 am")
    case .thursday:
        print("Set alarm to 7:30 am")
    case .friday:
        print("Yey! TGIF!")
    default:
        print("Weekend. Alarm not set")
    }
}

setupAlarm(for: weekday)
weekday = .friday
setupAlarm(for: weekday)

//: ### Исходные значения

enum Country: String {
    case usa = "USA"
    case russia = "Russia"
    case china
}

var country: Country = .usa
print("case name: \(country)")
print("case value: \(country.rawValue)")
country = .china
print("case value: \(country.rawValue)")

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let planet = Planet.earth
print("\(planet) is the \(planet.rawValue) planet from the sun")

//: ### Инициализация

let possiblePlanet = Planet(rawValue: 3)

//: ### Связанные значения (ассоциированные параметры)

enum WeekdayV2 {
    case workday(message: String, time: Int)
    case weekend(message: String)
}

var day = WeekdayV2.workday(message: "Set alarm to", time: 8)

func setAlarm(for weekday: WeekdayV2) {
    switch weekday {
    case let .workday(message, time):
        print("\(message) \(time) am")
    case let .weekend(message):
        print(message)
    }
}

setAlarm(for: day)
day = .weekend(message: "Alarm not set")
setAlarm(for: day)
