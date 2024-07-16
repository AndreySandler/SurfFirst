//: [Previous](@previous)

import Foundation

//: ## Словари
//: > Неупорядоченные коллекции, которые хранят в себе пары «ключ-значение». Тип ключа словаря может отличаться от типа значения. При этом сами ключи и значения должны быть одного типа

var carWashQueue: [String: String] = [:]  // Рекомендованная форма записи

// Наполнение словаря данными
carWashQueue = ["E095BA": "Red Toyota", "X127MT": "White BMW X6"]

// Изменение значения для ключа
carWashQueue["E095BA"] = "Red Camry"

// Изменение значения с сохранением старого значения
let oldValue = carWashQueue.updateValue("Grey BMW X6", forKey: "X127MT")

// Добавление новой пары ключ-значение
carWashQueue["M566PA"] = "Green Chevralet Niva"
carWashQueue

// Удаление значения по ключу с сохранением значения
carWashQueue.removeValue(forKey: "E095BA")

carWashQueue.count

carWashQueue.removeAll()
//: [Next](@next)

