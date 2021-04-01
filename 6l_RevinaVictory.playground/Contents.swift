import UIKit

struct Queue<T> {
  private var elements: [T] = []
  
  mutating func enqueue(element: T) {
    elements.append(element)
  }
  
  mutating func dequeue() -> T? {
    return elements.removeFirst()
  }
  
  func filter(predicate: (Int) -> Bool) -> [Int] {
      var tmpElements: [Int] = []
      for item in elements {
        if predicate(item as! Int) {
          tmpElements.append(item as! Int)
        }
      }
      return tmpElements
  }
  
  func find(predicate: (String) -> Bool) -> String {
    var res: String = ""
    for item in elements {
      if predicate(item as! String) {
        res = item as! String
      }
    }
    return res
  }
  
  subscript(index: Int) -> Int? {
    if index > elements.count - 1 {
      return nil
    }
    else {
      return index
    }
  }
}

//var queueInt = Queue<Int>()
//queueInt.enqueue(element: 1)
//queueInt.enqueue(element: 2)
//queueInt.enqueue(element: 3)
//print(queueInt)
//print(queueInt.filter{ $0 % 2 != 0 })

var queueString = Queue<String>()
queueString.enqueue(element: "a")
queueString.enqueue(element: "aaaa")
queueString.enqueue(element: "bbb")
queueString.enqueue(element: "cccccccc")
print(queueString)
print("Результат поиска a: \(queueString.find{ $0 == "a" })")
print("Результат извлечения: \(queueString.dequeue()!)")
print(queueString)
print("Результат поиска a: \(queueString.find{ $0 == "a" })")
queueString.enqueue(element: "c")
print(queueString)

print(queueString[0] as Any)
print(queueString[100] as Any)
