import UIKit

enum WindowState {
  case open, close
}

enum EngineState {
  case start, stop
}

protocol Car {
  var mark: String {get set}
  var year: String {get set}
  
  func Move()
}

extension Car {
  func ChangeWindowState(intent: WindowState) {
    let state = intent == WindowState.open ? "открыты" : "закрыты"
    print("Окна \(self.mark) \(state)")
  }
}

extension Car {
  func ChangeEngineStatus(intent: EngineState) {
    let state = intent == EngineState.start ? "запущен" : "остановлен"
    print("Двигатель \(self.mark) \(state)")
  }
}

class TunkCar: Car {
  var mark: String
  var year: String
  var maxCapacity: Int
  
  init(mark: String, year: String, maxCapacity: Int) {
    self.mark = mark
    self.year = year
    self.maxCapacity = maxCapacity
  }
  
  func Move() {
    print("Цистерна \(self.mark) поехала")
  }
}

class SportCar: Car {
  var mark: String
  var year: String
  var maxSpeed: Int
  
  init(mark: String, year: String, maxSpeed: Int) {
    self.mark = mark
    self.year = year
    self.maxSpeed = maxSpeed
  }
  
  func Move() {
    print("Спорткар \(self.mark) исчез")
  }
}

extension TunkCar: CustomStringConvertible {
  var description: String {
    return "Цистерна \(self.mark) \(self.year) года максимальная грузоподъёмность \(self.maxCapacity)"
  }
}

extension SportCar: CustomStringConvertible {
  var description: String {
    return "Спорткар \(self.mark) \(self.year) года максимальная скорость \(self.maxSpeed)"
  }
}

let tunk1 = TunkCar(mark: "Volvo", year: "2020", maxCapacity: 6000)
print(tunk1)
tunk1.Move()

let tunk2 = TunkCar(mark: "Камаз", year: "1980", maxCapacity: 2000)
print(tunk2)
tunk2.ChangeEngineStatus(intent: .start)

let sport1 = SportCar(mark: "Pontiac", year: "1967", maxSpeed: 130)
print(sport1)
sport1.ChangeEngineStatus(intent: .stop)

let sport2 = SportCar(mark: "Toyota", year: "1991", maxSpeed: 220)
print(sport2)
sport2.ChangeWindowState(intent: .open)
sport2.Move()
