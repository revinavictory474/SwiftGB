import UIKit

enum CarActions {
  case startEngine, stopEngine, openWindows, closeWindows, load, unload
}

struct SportCar {
  let mark: String
  let year: String
  let trunkCapacity: Int
  
  var isEngineStarted: Bool
  var isWindowsOpen: Bool
  var trunkUsage: Int

  mutating func ChangeSate(action: CarActions, load: Int = 0) {
    switch action {
    case .startEngine:
      isEngineStarted = true
    case .stopEngine:
      isEngineStarted = false
    case .openWindows:
      isWindowsOpen = true
    case .closeWindows:
      isWindowsOpen = false
    case .load:
      trunkUsage = (trunkUsage + load) > trunkCapacity ? trunkCapacity : trunkUsage + load
    case .unload:
      trunkUsage = (trunkUsage - load) > 0 ? trunkUsage - load : 0
    }
  }
}
  
struct TrunkCar {
  let mark: String
  let year: String
  let trunkCapacity: Int
  
  var isEngineStarted: Bool
  var isWindowsOpen: Bool
  var trunkUsage: Int

  mutating func ChangeSate(action: CarActions, load: Int = 0) {
    switch action {
    case .startEngine:
      isEngineStarted = true
    case .stopEngine:
      isEngineStarted = false
    case .openWindows:
      isWindowsOpen = true
    case .closeWindows:
      isWindowsOpen = false
    case .load:
      trunkUsage = (trunkUsage + load) > trunkCapacity ? trunkCapacity : trunkUsage + load
    case .unload:
      trunkUsage = (trunkUsage - load) > 0 ? trunkUsage - load : 0
    }
  }
}

var sportCar = SportCar(mark: "Honda Accord", year: "1993", trunkCapacity: 15, isEngineStarted: false, isWindowsOpen: false, trunkUsage: 0)

var trunkCar = TrunkCar(mark: "Volvo FMX", year: "2020", trunkCapacity: 38000, isEngineStarted: false, isWindowsOpen: false, trunkUsage: 0)
  
print(sportCar)
print(trunkCar)

sportCar.ChangeSate(action: .openWindows)
print(sportCar)

trunkCar.ChangeSate(action: .load, load: 50000)
print(trunkCar)
