import UIKit

enum RaceError: Error {
  case invalidCarName
}

class Race {
  let cars = [
    "Volvo": 190,
    "Chevrolet": 200,
    "Ваз": 120
  ]
  
  func getMaxSpeedValue(name: String) -> Int? {
    return cars[name]
  }
  
  func getMaxSpeedError(name: String) -> (Int?, RaceError?) {
    guard let res = cars[name] else {
      return (nil, RaceError.invalidCarName)
    }
    return (res, nil)
  }
  
  func getMaxSpeedExeption(name: String) -> Int {
    return cars[name]!
  }
}
let race = Race()
print("getMaxSpeedValue \(race.getMaxSpeedValue(name: "Porche") ?? 0)")
print("getMaxSpeedError \(race.getMaxSpeedError(name: "Porche"))")
//print("getMaxSpeedExeption \(race.getMaxSpeedExeption(name: "Porche"))")

 
struct Student {
  let name: String
  let score: Int
}

enum GroupError: Error {
  case noStudents
  case studentNotFound
}

class StudentGroup {
  var students: [Student] = []

  func addStudent(student: Student) {
    self.students.append(student)
  }

  func averageScore() throws -> Int {
    var amount: Int = 0
    for student in students {
      amount += student.score
    }
    guard students.count > 0 else {
      throw GroupError.noStudents
    }
    return amount/students.count
  }
  
  func getStudent(name: String) throws -> Student {
    guard let student = students.first(where: { $0.name == name }) else {
      throw GroupError.studentNotFound
    }
    return student
  }
}

let group = StudentGroup()
do {
  let average = try group.averageScore()
  print("averageScore \(average)")
} catch GroupError.noStudents {
  print("no students")
}


group.addStudent(student: Student(name: "Ivan", score: 10))
group.addStudent(student: Student(name: "Dave", score: 2))
do {
  let student = try group.getStudent(name: "Sean")
  print(student)
} catch GroupError.studentNotFound {
  print("student not found")
}
