import UIKit

enum CarActions {
  case startEngine, stopEngine, openWindows, closeWindows, load, unload, race
}

class Car {
  let mark: String
  let year: String
  
  init(mark: String, year: String) {
    self.mark = mark
    self.year = year
  }
  
  func ChangeSate(action: CarActions, load: Int = 0) {
  }
}

class TrunkCar: Car {
  var cargoCapacity: Int
  
  init(mark: String, year: String, cargoCapacity: Int) {
    self.cargoCapacity = cargoCapacity
    
    super.init(mark: mark, year: year)
  }
  
  override func ChangeSate(action: CarActions, load: Int = 0) {
    if action == .load {
      cargoCapacity = (cargoCapacity - load) < 0 ? 0 : (cargoCapacity - load)
      print("Загрузили \(load) т")
    }
  }
}

class SportCar: Car {
  var speed: Int
  
  init(mark: String, year: String, speed: Int) {
    self.speed = speed
    
    super.init(mark: mark, year: year)
  }
  
  override func ChangeSate(action: CarActions, load: Int = 0) {
    if action == .race {
      speed = 237
      print("Да будет гонка!")
    }
  }
}

var trunk = TrunkCar(mark: "Volvo", year: "2010", cargoCapacity: 6000)
print("Свойства грузовика:\n\tмарка - \(trunk.mark)\n\tгод - \(trunk.year)\n\tёмкость кузова - \(trunk.cargoCapacity)")
trunk.ChangeSate(action: .load, load: 100)
print("Свойства грузовика:\\tnмарка - \(trunk.mark)\n\tгод - \(trunk.year)\n\tёмкость кузова - \(trunk.cargoCapacity)")

var sport = SportCar(mark: "Chevrolet", year: "1967", speed: 0)
print("Свойства спорткара:\n\tмарка - \(sport.mark)\n\tгод - \(sport.year)\n\tскорость - \(sport.speed)")
sport.ChangeSate(action: .race)
print("Свойства спорткара:\n\tмарка - \(sport.mark)\n\tгод - \(sport.year)\n\tскорость - \(sport.speed)")
