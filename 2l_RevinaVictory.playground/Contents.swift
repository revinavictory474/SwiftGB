import UIKit

//Чётное/нечётное
let x = 6

func IsEven(num: Int)-> Bool {
  return (num % 2 == 0)
}
print("Число \(x) " + (IsEven(num: x) ? "Чётное" : "Нечётное"))


//Кратно трём
let y = 7

func IsThreeBase(num: Int)-> Bool {
  return (num % 3 == 0)
}
print("\nЧисло \(y) " + (IsEven(num: y) ? "Кратно трём" : "Не кратно трём"))


//Нарастающий массив

var array: [Int] = []

for i in 0...99 {
  array.append(i)
}
print("\n\(array)")

//Удалить чётные и которые не делятся на 3
var toDel: [Int] = []
var i = 99

while i > 0 {
  if array[i] % 2 == 0 || array[i] % 3 != 0 {
    toDel.append(i)
  }
  i -= 1
}
//print(toDel)

for i in toDel {
  array.remove(at: i)
}
print("\n\(array)")

//Фибоначчи
var fibonachi: [Int] = []

func addFibonachi(to: inout [Int]) {
  switch to.count {
  case 0:
    to.append(1)
  case 1:
    to.append(1)
  default:
    to.append(to[to.count - 2] + to[to.count - 1])
  }
}

for _ in 0...49 {
  addFibonachi(to: &fibonachi)
}
print("\n\(fibonachi)")
