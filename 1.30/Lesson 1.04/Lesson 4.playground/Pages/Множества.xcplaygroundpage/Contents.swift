//: [Previous](@previous)

import Foundation


//: ## Множества
//: > Хранят в себе неупорядоченные, но при этом уникальные значения одного типа

// Создание пустого множества с типом Character
let characters: Set<Character> = []

// Создание пустого множества с типом Int
var integers: Set<Int> = []

// Создание множества с типом String
var strings: Set = ["a", "b", "c", "a", "a"]

// Добавление нового элемента в множество
strings.insert("d")
strings

// Проверка на наличие определенного элемента во множестве
strings.contains("g")

// Сортировка с использованием метода sorted() для последующей итерации по множеству
strings.sorted()
strings.sorted(by: >)

//: [Next](@next)
