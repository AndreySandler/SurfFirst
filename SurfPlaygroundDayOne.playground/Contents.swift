// MARK: - Объявил переменные и константы
var someString: String
var someOptionalString: String?

let someInteger: Int
let someOptionalInteger: Int?

// MARK: - Создал enum типа Int
enum Numbers: Int {
    case firstNumber = 1
    case secondNumber = 2
    case thirdNumber = 3
}

// MARK: - Добавил значения и сложил строки
someString = "Hello"
someOptionalString = "Surf"

someString + " " + (someOptionalString ?? "") + "!"

// MARK: - Добавил значения и нашел наибольшую из констант
someInteger = 1
someOptionalInteger = 2

if someInteger > someOptionalInteger ?? 0 {
    print("\(someInteger) больше")
} else if someInteger < someOptionalInteger ?? 0 {
    print("\(someInteger) меньше")
} else {
    print("Они равны, Карл")
}



// MARK: - Создаю протокол с строкой
protocol Line {
    var description: String { get }
}

// MARK: - Объявил структуру, подписал под протокол
struct Location: Line {
    var title: String
    var number: Int
    var description: String
}

// MARK: - Объявил класс, инициализировал
class Player {
    var characterLocation: Location?
    var level: Numbers
    
    init(characterLocation: Location? = nil, level: Numbers) {
        self.characterLocation = characterLocation
        self.level = level
    }
}

// MARK: - Тут я создал экземпляр структуры, а потом использовал ее для создания класса
let andreyDeveloper = Player(level: .firstNumber)



// MARK: - Создаю словарь и массив
let dictionary = [1: "One", 3: "Three"]
let firstNumbers = [1, 3, 6, 8]

// MARK: - Второй массив на основе словаря и первого массива
var secondNumbers: [String] = []
let keys = dictionary.keys

for key in keys {
    for number in firstNumbers {
        if key == number {
            secondNumbers.append(dictionary[key] ?? "")
        }
    }
}

// MARK: - Третий массив со строками длиннее 4х символов
let thirdNumbers = secondNumbers.filter { $0.count > 4 }
