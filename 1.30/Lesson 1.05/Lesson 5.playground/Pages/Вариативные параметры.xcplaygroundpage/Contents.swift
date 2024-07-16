//: [Previous](@previous)

import Foundation

//: ### Вариативные параметры

func arithmeticMean(_ numbers: Double...) -> Double {
    var total = 0.0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

arithmeticMean(3, 0.0, 3.14, 56, -56)
