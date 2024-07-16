//: # Lesson 6
//: ### Вложенные функции

let items = [0, 1, 2, 3, 4, 5, 6]

func recursiveBinarySearch(by items: [Int], target: Int) -> Int? {
    func recursiveBinarySearch(by items: [Int], target: Int, firstIndex: Int, lastIndex: Int) -> Int? {
        if firstIndex > lastIndex {
            return nil
        }
        
        // Определяем элемент из середины коллекции
        let middleIndex = (firstIndex + lastIndex) / 2
        let item = items[middleIndex]
        
        if item == target {
            // Элемент найден
            return middleIndex
        } else if target < item {
            // Поиск по левой половине коллекции
            return recursiveBinarySearch(
                by: items,
                target: target,
                firstIndex: 0,
                lastIndex: middleIndex - 1
            )
        } else {
            // Поиск по правой половине коллекции
            return recursiveBinarySearch(
                by: items,
                target: target,
                firstIndex: middleIndex + 1,
                lastIndex: lastIndex
            )
        }
    }
    
    return recursiveBinarySearch(
        by: items,
        target: target,
        firstIndex: 0,
        lastIndex: items.count - 1
    )
}

recursiveBinarySearch(by: items, target: 3)

//: [Next](@next)
