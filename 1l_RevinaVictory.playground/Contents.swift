import UIKit

//квадратное уравнение
var x1: Float, x2: Float

let a: Float = 1, b: Float = 12, c: Float = 36
let D = b*b - 4*a*c

if D < 0
{
  print("Корней нет")
}
else if D == 0
{
  x1 = (-b + sqrt(D))/2*a
  print("Корень один - \(x1)")
}
else
{
  x1 = (-b + sqrt(D))/2*a
  x2 = (-b - sqrt(D))/2*a
  print("Корень один - \(x1), корень два - \(x2)")
}



//треугольник
let katet1: Float = 4, katet2: Float = 7

let hypotenuse = sqrt(katet1*katet1 + katet2*katet2)

let square = (katet1*katet2)/2
print("Площадь равна \(square)")

let perimeter = katet1 + katet2 + hypotenuse
print("Периметр равен \(perimeter)")

print("Гипотенуза равна \(hypotenuse)")



//Банк
let amount: Float = 100
let percent: Float = 3.5
let years = 5

var result: Float = amount*percent*Float(years)/100
print("Итоговая сумма вклада \(result)")

